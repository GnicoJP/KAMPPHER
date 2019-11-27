package mbr

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
    })

    val prevDataBlocksCount = RegNext(io.DataBlocksCount)
    val currentLogicalBlock = Wire(UInt(32.W))
    val late = RegInit(0.U(2.W))

    val PartitionStart = RegInit(VecInit(Seq.fill(4)(0.U(32.W))))
    val Partition0Start = PartitionStart(0).asTypeOf(Vec(4, UInt(8.W)))
    val Partition1Start = PartitionStart(1).asTypeOf(Vec(4, UInt(8.W)))
    val Partition2Start = PartitionStart(2).asTypeOf(Vec(4, UInt(8.W)))
    val Partition3Start = PartitionStart(3).asTypeOf(Vec(4, UInt(8.W)))
    // it might need more clock?
    currentLogicalBlock := io.MasterCommandArgument + io.DataBlocksCount

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
                    Partition0Start(0) := io.Buffer
                }
                is(0x1C4.U) {
                    Partition0Start(1) := io.Buffer
                }
                is(0x1C5.U) {
                    Partition0Start(2) := io.Buffer
                }
                is(0x1C6.U) {
                    Partition0Start(3) := io.Buffer
                }
                // Partition 1
                is(0x1D3.U) {
                    Partition1Start(0) := io.Buffer
                }
                is(0x1D4.U) {
                    Partition1Start(1) := io.Buffer
                }
                is(0x1D5.U) {
                    Partition1Start(2) := io.Buffer
                }
                is(0x1D6.U) {
                    Partition1Start(3) := io.Buffer
                }
                // Partition 2
                is(0x1E3.U) {
                    Partition2Start(0) := io.Buffer
                }
                is(0x1E4.U) {
                    Partition2Start(1) := io.Buffer
                }
                is(0x1E5.U) {
                    Partition2Start(2) := io.Buffer
                }
                is(0x1E6.U) {
                    Partition2Start(3) := io.Buffer
                }
                // Partition 3
                is(0x1F3.U) {
                    Partition3Start(0) := io.Buffer
                }
                is(0x1F4.U) {
                    Partition3Start(1) := io.Buffer
                }
                is(0x1F5.U) {
                    Partition3Start(2) := io.Buffer
                }
                is(0x1F6.U) {
                    Partition3Start(3) := io.Buffer
                }
            }
        }
    }
}