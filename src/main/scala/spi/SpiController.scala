package spi

import chisel3._
import chisel3.util._

class SpiController extends Module {
    def risingedge(x: Bool) : Bool = {
        val prev = RegNext(x)
        x && prev && !RegNext(prev)
    }
    val io = IO(new Bundle {
        val SlaveCommand = Input(UInt(6.W))
        val SlaveCommandArgument = Input(UInt(32.W))
        val SlaveCommandReadFinished = Input(Bool())
        val SlaveArgumentReadFinished = Input(Bool())
        val SlaveReadSuccess = Input(Bool())
        val DataBlockSize = Output(UInt(32.W))
    })
    val dataBlockSize = RegInit(512.U(32.W))

    io.DataBlockSize := dataBlockSize

    when(risingedge(io.SlaveArgumentReadFinished)) {
        switch(io.SlaveCommand) {
            is(16.U) {
                dataBlockSize := io.SlaveCommandArgument
            }
        }
    }
}