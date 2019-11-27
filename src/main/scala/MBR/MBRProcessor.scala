package kamppher.mbr

import chisel3._
import chisel3.util._

class MBRProcessor extends Module {
    def risingedge(x: Bool) : Bool = {
        val prev = RegNext(x)
        x && prev && !RegNext(prev)
    }
    val io = IO(new Bundle {
        val IsReading = Input(Bool())
        val Buffer = Input(UInt(8.W))
        val MasterCommandArgument = Input(UInt(32.W))
        val DataBlocksCount = Input(UInt(32.W))
        val Partition1Start = Output(UInt(32.W))
        val Partition2Start = Output(UInt(32.W))
        val Partition3Start = Output(UInt(32.W))
        val Partition4Start = Output(UInt(32.W))
    })

    val prevDataBlocksCount = RegNext(io.DataBlocksCount)
    val currentLogicalBlock = Wire(UInt(32.W))
    val late = RegInit(0.U(2.W))

    val PartitionStart = RegInit(VecInit(Seq.fill(4)(VecInit(Seq.fill(4)(0.U(8.W))))))
    // it might need more clock?
    currentLogicalBlock := io.MasterCommandArgument + io.DataBlocksCount

    io.Partition1Start := PartitionStart(0).asUInt
    io.Partition2Start := PartitionStart(1).asUInt
    io.Partition3Start := PartitionStart(2).asUInt
    io.Partition4Start := PartitionStart(3).asUInt

    when(io.IsReading){
        when (risingedge(io.IsReading) || (prevDataBlocksCount =/= io.DataBlocksCount)) {
            late := 3.U
        }.elsewhen(late > 1.U) {
            late := late - 1.U
        }.elsewhen(late === 1.U) {
            late := 0.U
            switch(currentLogicalBlock) {
                // Partition 0
                is(0x1C3.U) {
                    PartitionStart(0)(0) := io.Buffer
                }
                is(0x1C4.U) {
                    PartitionStart(0)(1) := io.Buffer
                }
                is(0x1C5.U) {
                    PartitionStart(0)(2) := io.Buffer
                }
                is(0x1C6.U) {
                    PartitionStart(0)(3) := io.Buffer
                }
                // Partition 1
                is(0x1D3.U) {
                    PartitionStart(1)(0) := io.Buffer
                }
                is(0x1D4.U) {
                    PartitionStart(1)(1) := io.Buffer
                }
                is(0x1D5.U) {
                    PartitionStart(1)(2) := io.Buffer
                }
                is(0x1D6.U) {
                    PartitionStart(1)(3) := io.Buffer
                }
                // Partition 2
                is(0x1E3.U) {
                    PartitionStart(2)(0) := io.Buffer
                }
                is(0x1E4.U) {
                    PartitionStart(2)(1) := io.Buffer
                }
                is(0x1E5.U) {
                    PartitionStart(2)(2) := io.Buffer
                }
                is(0x1E6.U) {
                    PartitionStart(2)(3) := io.Buffer
                }
                // Partition 3
                is(0x1F3.U) {
                    PartitionStart(3)(0) := io.Buffer
                }
                is(0x1F4.U) {
                    PartitionStart(3)(1) := io.Buffer
                }
                is(0x1F5.U) {
                    PartitionStart(3)(2) := io.Buffer
                }
                is(0x1F6.U) {
                    PartitionStart(3)(3) := io.Buffer
                }
            }
        }
    }
}