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

    io.Partition1Start := PartitionStart(0).asUInt
    io.Partition2Start := PartitionStart(1).asUInt
    io.Partition3Start := PartitionStart(2).asUInt
    io.Partition4Start := PartitionStart(3).asUInt

    val buf  = RegInit(0.U(8.W))
    val mca = RegInit(0.U(32.W))
    val dbc = RegInit(0.U(32.W))

    // it might need more clock?
    currentLogicalBlock := mca + dbc

    when(io.IsReading){
        when (risingedge(io.IsReading) || (prevDataBlocksCount =/= io.DataBlocksCount)) {
            late := 3.U
            mca := io.MasterCommandArgument
            dbc := io.DataBlocksCount
            buf := io.Buffer
        }.elsewhen(late > 1.U) {
            late := late - 1.U
        }.elsewhen(late === 1.U) {
            late := 0.U
            switch(currentLogicalBlock) {
                // Partition 0
                is(0x1C6.U) {
                    PartitionStart(0)(0) := buf
                }
                is(0x1C7.U) {
                    PartitionStart(0)(1) := buf
                }
                is(0x1C8.U) {
                    PartitionStart(0)(2) := buf
                }
                is(0x1C9.U) {
                    PartitionStart(0)(3) := buf
                }
                // Partition 1
                is(0x1D6.U) {
                    PartitionStart(1)(0) := buf
                }
                is(0x1D7.U) {
                    PartitionStart(1)(1) := buf
                }
                is(0x1D8.U) {
                    PartitionStart(1)(2) := buf
                }
                is(0x1D9.U) {
                    PartitionStart(1)(3) := buf
                }
                // Partition 2
                is(0x1E6.U) {
                    PartitionStart(2)(0) := buf
                }
                is(0x1E7.U) {
                    PartitionStart(2)(1) := buf
                }
                is(0x1E8.U) {
                    PartitionStart(2)(2) := buf
                }
                is(0x1E9.U) {
                    PartitionStart(2)(3) := buf
                }
                // Partition 3
                is(0x1F6.U) {
                    PartitionStart(3)(0) := buf
                }
                is(0x1F7.U) {
                    PartitionStart(3)(1) := buf
                }
                is(0x1F8.U) {
                    PartitionStart(3)(2) := buf
                }
                is(0x1F9.U) {
                    PartitionStart(3)(3) := buf
                }
            }
        }
    }
}