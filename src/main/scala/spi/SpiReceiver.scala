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
    val CLK = Input(Clock())  // Clock
}

class SpiReceiverStructure extends Bundle {
    val Counter = UInt(3.W)
    val Buffer = UInt(8.W)
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
        val ___buffer = Output(UInt(8.W))
    })
    io.DI := io.SPI.DI
    io.SPI.DO := io.DO

    withClock(io.SPI.CLK) {
        val state_init :: state_command  :: state_argument ::  state_crc :: state_single_writing :: Nil = Enum(5)
        val state = RegInit(state_init)
        io.___state := state

        val crcVec = Reg(Vec(7, Bool()))
        val readSuccess = RegInit(false.B)

        val counter = RegInit(0.U(8.W))

        val commandVec = Reg(Vec(6, Bool()))
        val commandArgumentVec = Reg(Vec(32, Bool()))

        io.Command := commandVec.asUInt
        io.CommandArgument := commandArgumentVec.asUInt

        val byteBuffer = Reg(Vec(8, Bool()))
        val byteCounter = RegInit(0.U(3.W))

        io.CommandReadFinished := state > state_command
        io.ArgumentReadFinished := state > state_argument
        io.ReadSuccess := readSuccess

        io.___buffer := byteBuffer.asUInt
        io.___counter := byteCounter

        when(byteCounter === 7.U){
            switch(state) {
                is(state_init) { // init -> ignore
                    state := state_command
                }
                is(state_command) {   // command
                    readSuccess := false.B
                    when(byteBuffer(0) === false.B && byteBuffer(1) === true.B) {
                        state := state_argument
                        for(i <- 0 until 6)
                            commandVec(i.U) := byteBuffer(2 + i)
                        counter := 0.U
                    }
                }
                is(state_argument) {   // argument
                    switch(counter) {
                        is(0.U) {
                            for(i <- 0 until 8)
                                commandArgumentVec(i.U) := byteBuffer(i)
                        }
                        is(1.U) {
                            for(i <- 0 until 8)
                                commandArgumentVec((8 + i).U) := byteBuffer(i)
                        }
                        is(2.U) {
                            for(i <- 0 until 8)
                                commandArgumentVec((16 + i).U) :=  byteBuffer(i)
                        }
                        is(3.U) {
                            for(i <- 0 until 8)
                                commandArgumentVec((24 + i).U) := byteBuffer(i)
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
                        crcVec(i.U) := byteBuffer(i)
                    state := Mux(commandVec.asUInt === 24.U, state_single_writing , state_command)
                }
                // is(state_single_writing) { // Single Block Write

                // }
            }
        }
        byteBuffer(byteCounter + 1.U) := io.SPI.DI
        byteCounter := byteCounter + 1.U
    }
}

object SpiReceiver extends App {
  chisel3.Driver.execute(args,()=>new SpiReceiver())
  chisel3.Driver.execute(args, () => new spi.debugger.SpiReceiverLedDebugger())
}