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
        val Reading = Output(Bool())
        val ReadSuccess = Output(Bool())
        val Command = Output(UInt(6.W))
        val CommandArgument = Output(UInt(32.W))
        val ___counter = Output(UInt(8.W))
        val ___state = Output(UInt(3.W))
    })
    io.DI := io.SPI.DI
    io.SPI.DO := io.DO

    val state_first :: state_second :: state_command  :: state_argument ::  state_crc :: state_centinel :: Nil = Enum(6)

    val state = RegInit(state_first)
    val counter = RegInit(0.U(8.W))
    val crcBuffer = SyncReadMem(7, Bool())
    val readSuccess = RegInit(false.B)

    val commandVec = Wire(Vec(6, Bool()))
    val commandArgumentVec = Wire(Vec(32, Bool()))
    val commandBuffer = SyncReadMem(6, Bool())
    val commandArgumentBuffer = SyncReadMem(32, Bool())

    io.Reading := state > state_second
    io.CommandReadFinished := state > state_command
    io.ArgumentReadFinished := state > state_argument
    io.ReadSuccess := readSuccess

    io.___state := state
    io.___counter := counter

    for(i <- 0 until 6)
        commandVec(i) := commandBuffer(i)

    for(i <- 0 until 32)
        commandArgumentVec(i) := commandArgumentBuffer(i)

    io.Command := commandVec.asUInt
    io.CommandArgument := commandArgumentVec.asUInt

    switch(state) {
        is(state_first) {   // first bit "0"
            when(io.SPI.DI === false.B) {
                state := state_second
                readSuccess := false.B
            } 
            counter := 0.U
        }
        is(state_second){    // second bit "1"
            state := Mux(io.SPI.DI, state_command, state_first)
            counter := 0.U
        }
        is(state_command) {   // command
            commandBuffer.write(counter, io.SPI.DI)
            when(counter === 5.U) {
                state := state_argument
                counter := 0.U
            }.otherwise{
                counter := counter + 1.U
            }
        }
        is(state_argument) {   // argument
            commandArgumentBuffer.write(counter, io.SPI.DI)
            when(counter === 31.U) {
                state := state_crc
                counter := 0.U
            }.otherwise{
                counter := counter + 1.U
            }
        }
        is(state_crc) {   // CRC
            crcBuffer.write(counter, io.SPI.DI)
            when(counter === 6.U) {
                state := state_centinel
                counter := 0.U
            }.otherwise{
                counter := counter + 1.U
            }
        }
        is(state_centinel) { // Last bit
            when(io.SPI.DI === true.B){
                readSuccess := true.B
            }
            state := state_first
        }
    }
}

object SpiReceiver extends App {
  chisel3.Driver.execute(args,()=>new SpiReceiver())
  chisel3.Driver.execute(args, () => new spi.debugger.SpiReceiverLedDebugger())
}