package kamppher.spi

import chisel3._
import chisel3.util._
import chisel3.experimental.withClock
import chisel3.experimental.withClockAndReset

class SpiSlaveReceiver extends Module {
    def risingedge(x: Bool) : Bool = {
        val prev = RegNext(x)
        x && prev && !RegNext(prev)
    }
    val io = IO(new Bundle{
        val InputBuffer = Input(UInt(8.W))
        val BufferChanged = Input(Bool())
        val DataBlockSize = Input(UInt(32.W))
        val CommandReadFinished = Output(Bool())
        val ArgumentReadFinished = Output(Bool())
        val ReadSuccess = Output(Bool())
        val Command = Output(UInt(6.W))
        val CommandArgument = Output(UInt(32.W))
        val ___state = Output(UInt(3.W))
    })
    val state_command :: state_argument ::  state_crc :: state_write :: Nil = Enum(4)
    val writestate_token :: writestate_data :: writestate_crc :: Nil = Enum(3)
    val writestate_isSingle = Reg(Bool())
    val state = RegInit(state_command)
    val writestate = RegInit(writestate_token)
    io.___state := state

    val crcVec = Reg(Vec(7, Bool()))
    val readSuccess = RegInit(false.B)

    val commandVec = Reg(Vec(6, Bool()))
    val commandArgumentVec = Reg(Vec(32, Bool()))
    val commandVecAsUInt = Wire(UInt(6.W))
    commandVecAsUInt := commandVec.asUInt

    val counter = Reg(UInt(32.W))

    io.Command := commandVecAsUInt
    io.CommandArgument := commandArgumentVec.asUInt

    io.CommandReadFinished := state > state_command
    io.ArgumentReadFinished := state > state_argument
    io.ReadSuccess := readSuccess

    when(risingedge(io.BufferChanged)) {
        switch(state) {
            is(state_command) {   // command
                readSuccess := false.B
                when(io.InputBuffer(7) === false.B && io.InputBuffer(6) === true.B) {
                    state := state_argument
                    for(i <- 0 until 6)
                        commandVec(i.U) := io.InputBuffer(i)
                    counter := 0.U
                }
            }
            is(state_argument) {   // argument
                switch(counter) {
                    is(0.U) {
                        for(i <- 0 until 8)
                            commandArgumentVec(24 + i) := io.InputBuffer(i)
                    }
                    is(1.U) {
                        for(i <- 0 until 8)
                            commandArgumentVec(16 + i) := io.InputBuffer(i)
                    }
                    is(2.U) {
                        for(i <- 0 until 8)
                            commandArgumentVec(8 + i) :=  io.InputBuffer(i)
                    }
                    is(3.U) {
                        for(i <- 0 until 8)
                            commandArgumentVec(i) := io.InputBuffer(i)
                        state := state_crc
                    }
                }
                counter := counter + 1.U
            }
            is(state_crc) {   // CRC
                readSuccess := io.InputBuffer(0) === true.B
                for(i <- 0 until 6)
                    crcVec(i) := io.InputBuffer(i + 1)
                when(commandVecAsUInt === 24.U) {
                    state := state_write
                    writestate_isSingle := true.B
                }.elsewhen(commandVecAsUInt === 25.U) {
                    state := state_write
                    writestate_isSingle := false.B
                }.otherwise {
                    state := state_command
                    writestate_isSingle := true.B
                }
                writestate := writestate_token
            }
            is(state_write) { // Single/Multiple Block Write
                switch(writestate) {
                    is(writestate_token) {
                        when(writestate_isSingle) {
                            when(io.InputBuffer === 0xfe.U) {
                                counter := 1.U
                                writestate := writestate_data
                            }
                        }.otherwise {
                            counter := 1.U
                            when(io.InputBuffer === 0xfc.U) {
                                writestate := writestate_data
                            }.elsewhen(io.InputBuffer === 0xfd.U) {
                                state := state_command
                            }
                        }
                    }
                    is(writestate_data) {
                        when(counter === io.DataBlockSize)
                        {
                            counter := 1.U
                            writestate := writestate_crc
                        }.otherwise {
                            counter := counter + 1.U
                        }
                    }
                    is(writestate_crc) {
                        when(counter === 2.U) {
                            counter := 0.U
                            writestate := writestate_token
                            state := Mux(writestate_isSingle, state_command, state_write)
                        }.otherwise {
                            counter := counter + 1.U
                        }
                    }
                }
            }
        }
    }
}