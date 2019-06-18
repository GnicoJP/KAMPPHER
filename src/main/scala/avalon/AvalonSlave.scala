package avalon

import chisel3._
import chisel3.util._
import chisel3.experimental.withClock
/*
 * Avalon SLAVE INTERFACE
 */
class AvalonSlave(val width : Int, val address_size : Int) extends Bundle {
    val address = Input(UInt(address_size.W))
    val read = Input(Bool())
    val readdata = Input(UInt(width.W))
    val write = Input(Bool())
    val writedata = Input(UInt(width.W))
    val waitrequest = Input(Bool())
}