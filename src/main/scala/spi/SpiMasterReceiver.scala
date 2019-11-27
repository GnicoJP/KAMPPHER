package kamppher.spi

import chisel3._
import chisel3.util._

class SpiMasterReceiver extends Module {
    def risingedge(x: Bool) : Bool = {
        val prev = RegNext(x)
        x && prev && !RegNext(prev)
    }

    def commandChanged(x: UInt) : Bool = 
        x =/= RegNext(x)

    val io = IO(new Bundle{
        val InputBuffer = Input(UInt(8.W))
        val BufferChanged = Input(Bool())
        val DataBlockSize = Input(UInt(32.W))
        val CommandReadFinished = Input(Bool())
        val Command = Input(UInt(6.W))
        val DataBlocksCount = Output(UInt(32.W))
        val IsDataReading = Output(Bool())
        val ___state = Output(UInt(3.W))
        val IsBusy = Output(Bool())
    })
    val state_busy :: state_response :: state_ocr :: state_datatoken :: state_packet :: state_crc :: Nil = Enum(6)
    val state = RegInit(state_response)
    io.___state := state

    val counter = RegInit(0.U(32.W))
    io.DataBlocksCount := counter

    val initialized = RegInit(false.B)

    val dataReading = RegInit(false.B)

    io.IsBusy := state === state_busy
    io.IsDataReading := dataReading

    when(risingedge(io.BufferChanged)) {
        initialized := initialized || io.CommandReadFinished
        switch(state) {
            is(state_busy) { // Busyflag, wait until slave sends 0xff.
                when(io.InputBuffer.andR) {
                    state := state_response
                }
            }
            is(state_response) {   // response
                when(initialized && io.InputBuffer(7) === false.B) {
                    when(io.Command === 12.U) { // R1b Response
                        state := state_busy
                    }.elsewhen(io.Command === 8.U || io.Command === 58.U) { // R3/7 Response
                        state := state_ocr
                    }.elsewhen(io.Command === 17.U || io.Command === 18.U /* Read Commands(R1 Response) */ 
                                    || io.Command === 9.U || io.Command === 10.U /* R2 Response */) {
                        state := state_datatoken
                    }.otherwise { // Ignore R1 Responses
                        state := state_response
                    }
                }
            }
            is(state_ocr) {   // OCR(32bit)
                when(commandChanged(io.Command)) {
                    state := state_response
                }.otherwise {
                    state := state_ocr
                    when(counter === 3.U) {
                        state := state_response
                        counter := 0.U
                    }.otherwise {
                        counter := counter + 1.U
                    }
                }
            }
            is(state_datatoken) { // DataPacket's DataToken
                when(io.InputBuffer === 0xfe.U) {
                    state := state_packet
                }.elsewhen(io.InputBuffer === 0.U) {
                    state := state_datatoken
                }.elsewhen((io.InputBuffer & 0xe0.U) === 0.U) { // error
                    state := state_response
                }
            }
            is(state_packet) { // DataPacket
                when(commandChanged(io.Command)) { // e.g. CMD12(STOP TRANS)
                    state := state_response
                    dataReading := false.B
                    counter := 0.U
                }.otherwise {
                    dataReading := true.B
                    when(counter + 1.U === Mux(io.Command === 9.U || io.Command === 10.U, 16.U, io.DataBlockSize)) {
                        state := state_crc
                        counter := 0.U
                    }.otherwise {
                        counter := counter + 1.U
                    }
                }
            }
            is(state_crc) { // CRC
                when(commandChanged(io.Command)) { // e.g. CMD12(STOP TRANS)
                    state := state_response
                    counter := 0.U
                    dataReading := false.B
                }.otherwise {
                    state := state_crc
                    when(counter === 0.U) {
                        counter := 1.U
                    }.otherwise {
                        counter := 0.U
                        dataReading := false.B
                        state := state_response
                    }
                }
            }
        }
    }
}