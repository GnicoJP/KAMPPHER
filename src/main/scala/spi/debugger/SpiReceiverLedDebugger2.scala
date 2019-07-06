package spi.debugger

import chisel3._
import chisel3.util._
import chisel3.experimental.withClock

class SpiReceiverLedDebugger2 extends Module {
    def risingedge(x: Bool) = x && !RegNext(x)

    val io = IO(new Bundle{
        val CommandReadFinished = Input(Bool())
        val ArgumentReadFinished = Input(Bool())
        val ReadSuccess = Input(Bool())
        val Command = Input(UInt(6.W))
        val CommandArgument = Input(UInt(32.W))

        val CMDCount = Output(UInt(6.W))
    })
    val count = RegInit(0.U(6.W))
    io.CMDCount := count
    when(risingedge(io.ReadSuccess)) {
        count := count + 1.U;
    }
}