package spi

import chisel3._
import chisel3.util._

class SpiBuffer extends BlackBox with HasBlackBoxResource {
    val io = IO(new Bundle{
        val DI = Input(Bool())
        val CLK = Input(Bool())
        val CS = Input(Bool())
        val Buffer = Output(UInt(8.W))
        val Changed = Output(Bool())
    })
    setResource("/SpiBuffer.v")
}