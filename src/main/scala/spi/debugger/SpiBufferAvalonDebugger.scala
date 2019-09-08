package spi.debugger

import avalon.AvalonSlave
import chisel3._
import chisel3.util._

class SpiBufferAvalonDebugger extends Module {
    def risingedge(x: Bool) = x && !RegNext(x)
    val io = IO(new Bundle {
        val Avalon = new AvalonSlave(64, 1)
        val InputBuffer = Input(UInt(8.W))
        val BufferChanged = Input(Bool())
    })

    val Buffer = Reg(Vec(2, UInt(8.W)))
    val Index = RegInit(VecInit(List(0xffffffffffffffL.U(56.W), 0xffffffffffffffL.U(56.W))))
    val Flip = RegInit(true.B)

    val out = Wire(MixedVec(UInt(8.W), UInt(56.W)))
    
    out(0) := Mux(io.Avalon.address === 0.U, Buffer(0), Buffer(1))
    out(1) := Mux(io.Avalon.address === 0.U, Index(0), Index(1))
    io.Avalon.readdata := out.asUInt
    io.Avalon.waitrequest := false.B

    when(risingedge(io.BufferChanged)) {
        when(Flip) {
            Buffer(0) := io.InputBuffer
            Index(0) := Index(1) + 1.U
        }.otherwise {
            Buffer(1) := io.InputBuffer
            Index(1) := Index(0) + 1.U
        }
        Flip := ~Flip
    }
}