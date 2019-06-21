package spi

import chisel3._
import chisel3.util._
import chisel3.experimental.withClock
/*
 * SPI SLAVE INTERFACE
 */
class SpiSlave extends Bundle {
    val CS = Input(Bool())    // Chip Select
    val DI = Input(Bool())    // Data Input
    val DO = Output(Bool())   // Data Output
}

class SpiReceiver extends Module {
    val io = IO(new Bundle{
        val SPI = new SpiSlave
        val DO = Input(Bool())
        val DI = Output(Bool())
        val CommandReadFinished = Output(Bool())
        val ArgumentReadFinished = Output(Bool())
        val ReadSuccess = Output(Bool())
        val Command = Output(UInt(6.W))
        val CommandArgument = Output(UInt(32.W))
        val ___counter = Output(UInt(3.W))
        val ___state = Output(UInt(3.W))
    })
    io.DI := io.SPI.DI
    io.SPI.DO := io.DO

    val state_command  :: state_argument ::  state_crc :: state_single_writing :: Nil = Enum(4)

    val state = RegInit(state_command)
    val counter = RegInit(0.U(8.W))
    val crcBuffer = SyncReadMem(7, Bool())
    val readSuccess = RegInit(false.B)

    val byteBuffer = Reg(Vec(8, Bool()))
    val byteCounter = RegInit(0.U(3.W))

    val commandVec = Wire(Vec(6, Bool()))
    val commandArgumentVec = Wire(Vec(32, Bool()))
    val commandBuffer = SyncReadMem(6, Bool())
    val commandArgumentBuffer = SyncReadMem(32, Bool())

    io.CommandReadFinished := state > state_command
    io.ArgumentReadFinished := state > state_argument
    io.ReadSuccess := readSuccess

    io.___state := state
    io.___counter := byteCounter

    for(i <- 0 until 6)
        commandVec(i) := commandBuffer(i)

    for(i <- 0 until 32)
        commandArgumentVec(i) := commandArgumentBuffer(i)

    io.Command := commandVec.asUInt
    io.CommandArgument := commandArgumentVec.asUInt

    byteBuffer(byteCounter) := io.SPI.DI
    when(byteCounter === 7.U) {
        switch(state) {
            is(state_command) {   // command
                when(byteBuffer(0) === false.B && byteBuffer(1) === true.B) {
                    state := state_argument
                    for(i <- 0 until 6)
                        commandBuffer.write(i.U, byteBuffer(2 + i))
                    counter := 0.U
                }
            }
            is(state_argument) {   // argument
                switch(counter) {
                    is(0.U) {
                        for(i <- 0 until 8)
                            commandArgumentBuffer.write(i.U, byteBuffer(i))
                    }
                    is(1.U) {
                        for(i <- 0 until 8)
                            commandArgumentBuffer.write((8 + i).U, byteBuffer(i))
                    }
                    is(2.U) {
                        for(i <- 0 until 8)
                            commandArgumentBuffer.write((16 + i).U, byteBuffer(i))
                    }
                    is(3.U) {
                        for(i <- 0 until 8)
                            commandArgumentBuffer.write((24 + i).U, byteBuffer(i))
                    }
                }
                counter := counter + 1.U
                when(counter === 3.U) {
                    state := state_crc
                    counter := 0.U
                }.otherwise{
                    counter := counter + 1.U
                }
            }
            is(state_crc) {   // CRC
                readSuccess := byteBuffer(7) === true.B
                for(i <- 0 until 6)
                    crcBuffer.write(i.U, byteBuffer(i))
                state := Mux(commandVec.asUInt === 24.U, state_single_writing , state_command)
            }
            // is(state_single_writing) { // Single Block Write

            // }
        }
    }
    byteCounter := byteCounter + 1.U
}

object SpiReceiver extends App {
  chisel3.Driver.execute(args,()=>new SpiReceiver())
  chisel3.Driver.execute(args, () => new spi.debugger.SpiReceiverLedDebugger())
}