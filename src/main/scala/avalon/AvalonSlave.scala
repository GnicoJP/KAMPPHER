package avalon

import chisel3._
import chisel3.util._
import chisel3.experimental.withClock
/*
 * Avalon SLAVE INTERFACE
 */
class AvalonSlave(val data_size : Int, val address_size : Int) extends Bundle {
    val address = Input(UInt(address_size.W))
    val read = Input(Bool())
    val readdata = Output(UInt(data_size.W))
    val write = Input(Bool())
    val writedata = Input(UInt(data_size.W))
    val waitrequest = Output(Bool())
}