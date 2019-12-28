package kamppher.mbr

import chisel3._
import chisel3.util._

class WritingAddressVerifier extends Module {
    val io = IO(new Bundle {
        val MasterCommand = Input(UInt(6.W))
        val MasterWritingAddress = Input(UInt(32.W))
        val MasterCommandReadSuccess = Input(Bool())
        val PartitionWriteEnables = Input(Vec(5, Bool()))
        val Partition1Start = Input(UInt(32.W))
        val Partition2Start = Input(UInt(32.W))
        val Partition3Start = Input(UInt(32.W))
        val Partition4Start = Input(UInt(32.W))
        val IsOk = Output(Bool())
        val __dbgInfo = Output(Vec(5, Bool()))
    })

    val isInMBR = Wire(Bool())
    isInMBR := io.MasterWritingAddress < io.Partition1Start
    val isInPartition1 = Wire(Bool())
    isInPartition1 := (io.MasterWritingAddress >= io.Partition1Start) && (io.MasterWritingAddress < io.Partition2Start)
    val isInPartition2 = Wire(Bool())
    isInPartition2 := (io.MasterWritingAddress >= io.Partition2Start) && (io.MasterWritingAddress < io.Partition3Start)
    val isInPartition3 = Wire(Bool())
    isInPartition3 := (io.MasterWritingAddress >= io.Partition3Start) && (io.MasterWritingAddress < io.Partition4Start)
    val isInPartition4 = Wire(Bool())
    isInPartition4 := io.MasterWritingAddress >= io.Partition4Start

    io.IsOk := Mux((io.MasterCommand === 24.U || io.MasterCommand === 25.U) && io.MasterCommandReadSuccess,
                    (~isInMBR || io.PartitionWriteEnables(0)) &&
                    (~isInPartition1 || io.PartitionWriteEnables(1)) &&
                    (~isInPartition2 || io.PartitionWriteEnables(2)) &&
                    (~isInPartition3 || io.PartitionWriteEnables(3)) &&
                    (~isInPartition4 || io.PartitionWriteEnables(4))
                , true.B)
    io.__dbgInfo(0) := (io.MasterCommand === 24.U || io.MasterCommand === 25.U) && io.MasterCommandReadSuccess && (~isInMBR || io.PartitionWriteEnables(0))
    io.__dbgInfo(1) := (io.MasterCommand === 24.U || io.MasterCommand === 25.U) && io.MasterCommandReadSuccess && (~isInPartition1 || io.PartitionWriteEnables(1))
    io.__dbgInfo(2) := (io.MasterCommand === 24.U || io.MasterCommand === 25.U) && io.MasterCommandReadSuccess && (~isInPartition2 || io.PartitionWriteEnables(2))
    io.__dbgInfo(3) := (io.MasterCommand === 24.U || io.MasterCommand === 25.U) && io.MasterCommandReadSuccess && (~isInPartition3 || io.PartitionWriteEnables(3))
    io.__dbgInfo(4) := (io.MasterCommand === 24.U || io.MasterCommand === 25.U) && io.MasterCommandReadSuccess && (~isInPartition4 || io.PartitionWriteEnables(4))
}