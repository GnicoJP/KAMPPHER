package spi.debugger

import avalon.AvalonSlave
import chisel3._
import chisel3.util._

class SpiBufferAvalonDebugger extends Module {
    def risingedge(x: Bool) = x && !RegNext(x)
    val io = IO(new Bundle {
        val Avalon = new AvalonSlave(64, 7)
        val InputBuffer = Input(UInt(8.W))
        val BufferChanged = Input(Bool())
    })

    val mem = SyncReadMem(128, UInt(8.W))
    val Flip = RegInit(0.U(7.W))
    val FlipNext = Wire(UInt(7.W))
    val waitRequest = RegInit(true.B)

    io.Avalon.readdata := mem.read(io.Avalon.address, io.Avalon.read)
    io.Avalon.waitrequest := waitRequest


    val __flip = Wire(UInt(7.W))
    __flip := Flip + 1.U
    FlipNext := Mux(__flip === 0.U, 1.U, __flip)

    when(waitRequest) {
        mem.write(0.U, FlipNext)
        Flip := FlipNext
        waitRequest := false.B
    }.otherwise {
        when(risingedge(io.BufferChanged)) {
            mem.write(Flip, io.InputBuffer)
            waitRequest := true.B
        }
    }
}