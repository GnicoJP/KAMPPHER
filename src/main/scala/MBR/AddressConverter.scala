package kamppher.mbr

import chisel3._
import chisel3.util._

class AddressConverter extends Module {
    val io = IO(new Bundle {
        val InputPartition1Start = Input(UInt(32.W))
        val InputPartition2Start = Input(UInt(32.W))
        val InputPartition3Start = Input(UInt(32.W))
        val InputPartition4Start = Input(UInt(32.W))
        val OutputPartition1Start = Output(UInt(32.W))
        val OutputPartition2Start = Output(UInt(32.W))
        val OutputPartition3Start = Output(UInt(32.W))
        val OutputPartition4Start = Output(UInt(32.W))
        // val IsBlockAddressing = Input(Bool()) // will implement soon....
        // val BlockSize = Input(UInt(32.W))  // will implement soon....
    })
    val p1conved = Wire(UInt(32.W))
    p1conved := (io.InputPartition1Start << 9)(31,0)
    val p2conved = Wire(UInt(32.W))
    p2conved := (io.InputPartition2Start << 9)(31,0)
    val p3conved = Wire(UInt(32.W))
    p3conved := (io.InputPartition3Start << 9)(31,0)
    val p4conved = Wire(UInt(32.W))
    p4conved := (io.InputPartition4Start << 9)(31,0)

    io.OutputPartition1Start := Mux(p1conved.orR === false.B, "hffffffff".U, p1conved)
    io.OutputPartition2Start := Mux(p2conved.orR === false.B, "hffffffff".U, p2conved)
    io.OutputPartition3Start := Mux(p3conved.orR === false.B, "hffffffff".U, p3conved)
    io.OutputPartition4Start := Mux(p4conved.orR === false.B, "hffffffff".U, p4conved)
}