module WritingAddressVerifier(
  input         clock,
  input         reset,
  input  [5:0]  io_MasterCommand,
  input  [31:0] io_MasterWritingAddress,
  input         io_MasterCommandReadSuccess,
  input         io_PartitionWriteEnables_0,
  input         io_PartitionWriteEnables_1,
  input         io_PartitionWriteEnables_2,
  input         io_PartitionWriteEnables_3,
  input         io_PartitionWriteEnables_4,
  input  [31:0] io_Partition1Start,
  input  [31:0] io_Partition2Start,
  input  [31:0] io_Partition3Start,
  input  [31:0] io_Partition4Start,
  output        io_IsOk,
  output        io___dbgInfo_0,
  output        io___dbgInfo_1,
  output        io___dbgInfo_2,
  output        io___dbgInfo_3,
  output        io___dbgInfo_4
);
  wire  isInMBR; // @[WritingAddressVerifier.scala 21:40]
  wire  _T_1; // @[WritingAddressVerifier.scala 23:48]
  wire  _T_2; // @[WritingAddressVerifier.scala 23:99]
  wire  isInPartition1; // @[WritingAddressVerifier.scala 23:71]
  wire  _T_4; // @[WritingAddressVerifier.scala 25:48]
  wire  _T_5; // @[WritingAddressVerifier.scala 25:99]
  wire  isInPartition2; // @[WritingAddressVerifier.scala 25:71]
  wire  _T_7; // @[WritingAddressVerifier.scala 27:48]
  wire  _T_8; // @[WritingAddressVerifier.scala 27:99]
  wire  isInPartition3; // @[WritingAddressVerifier.scala 27:71]
  wire  isInPartition4; // @[WritingAddressVerifier.scala 29:47]
  wire  _T_11; // @[WritingAddressVerifier.scala 31:18]
  wire  _T_12; // @[WritingAddressVerifier.scala 31:27]
  wire  _T_13; // @[WritingAddressVerifier.scala 31:63]
  wire  _T_14; // @[WritingAddressVerifier.scala 31:79]
  wire  _T_15; // @[WritingAddressVerifier.scala 31:59]
  wire  _T_16; // @[WritingAddressVerifier.scala 31:115]
  wire  _T_17; // @[WritingAddressVerifier.scala 31:131]
  wire  _T_18; // @[WritingAddressVerifier.scala 31:111]
  wire  _T_19; // @[WritingAddressVerifier.scala 31:167]
  wire  _T_20; // @[WritingAddressVerifier.scala 31:183]
  wire  _T_21; // @[WritingAddressVerifier.scala 31:163]
  wire  _T_22; // @[WritingAddressVerifier.scala 31:219]
  wire  _T_23; // @[WritingAddressVerifier.scala 31:235]
  wire  _T_25; // @[WritingAddressVerifier.scala 32:42]
  wire  _T_26; // @[WritingAddressVerifier.scala 32:71]
  wire  _T_27; // @[WritingAddressVerifier.scala 32:51]
  wire  _T_28; // @[WritingAddressVerifier.scala 32:81]
  assign isInMBR = io_MasterWritingAddress < io_Partition1Start; // @[WritingAddressVerifier.scala 21:40]
  assign _T_1 = io_MasterWritingAddress >= io_Partition1Start; // @[WritingAddressVerifier.scala 23:48]
  assign _T_2 = io_MasterWritingAddress < io_Partition2Start; // @[WritingAddressVerifier.scala 23:99]
  assign isInPartition1 = _T_1 & _T_2; // @[WritingAddressVerifier.scala 23:71]
  assign _T_4 = io_MasterWritingAddress >= io_Partition2Start; // @[WritingAddressVerifier.scala 25:48]
  assign _T_5 = io_MasterWritingAddress < io_Partition3Start; // @[WritingAddressVerifier.scala 25:99]
  assign isInPartition2 = _T_4 & _T_5; // @[WritingAddressVerifier.scala 25:71]
  assign _T_7 = io_MasterWritingAddress >= io_Partition3Start; // @[WritingAddressVerifier.scala 27:48]
  assign _T_8 = io_MasterWritingAddress < io_Partition4Start; // @[WritingAddressVerifier.scala 27:99]
  assign isInPartition3 = _T_7 & _T_8; // @[WritingAddressVerifier.scala 27:71]
  assign isInPartition4 = io_MasterWritingAddress >= io_Partition4Start; // @[WritingAddressVerifier.scala 29:47]
  assign _T_11 = ~ isInMBR; // @[WritingAddressVerifier.scala 31:18]
  assign _T_12 = _T_11 | io_PartitionWriteEnables_0; // @[WritingAddressVerifier.scala 31:27]
  assign _T_13 = ~ isInPartition1; // @[WritingAddressVerifier.scala 31:63]
  assign _T_14 = _T_13 | io_PartitionWriteEnables_1; // @[WritingAddressVerifier.scala 31:79]
  assign _T_15 = _T_12 & _T_14; // @[WritingAddressVerifier.scala 31:59]
  assign _T_16 = ~ isInPartition2; // @[WritingAddressVerifier.scala 31:115]
  assign _T_17 = _T_16 | io_PartitionWriteEnables_2; // @[WritingAddressVerifier.scala 31:131]
  assign _T_18 = _T_15 & _T_17; // @[WritingAddressVerifier.scala 31:111]
  assign _T_19 = ~ isInPartition3; // @[WritingAddressVerifier.scala 31:167]
  assign _T_20 = _T_19 | io_PartitionWriteEnables_3; // @[WritingAddressVerifier.scala 31:183]
  assign _T_21 = _T_18 & _T_20; // @[WritingAddressVerifier.scala 31:163]
  assign _T_22 = ~ isInPartition4; // @[WritingAddressVerifier.scala 31:219]
  assign _T_23 = _T_22 | io_PartitionWriteEnables_4; // @[WritingAddressVerifier.scala 31:235]
  assign _T_25 = io_MasterCommand == 6'h18; // @[WritingAddressVerifier.scala 32:42]
  assign _T_26 = io_MasterCommand == 6'h19; // @[WritingAddressVerifier.scala 32:71]
  assign _T_27 = _T_25 | _T_26; // @[WritingAddressVerifier.scala 32:51]
  assign _T_28 = _T_27 & io_MasterCommandReadSuccess; // @[WritingAddressVerifier.scala 32:81]
  assign io_IsOk = _T_21 & _T_23; // @[WritingAddressVerifier.scala 31:13]
  assign io___dbgInfo_0 = _T_28 & isInMBR; // @[WritingAddressVerifier.scala 32:21]
  assign io___dbgInfo_1 = _T_28 & isInPartition1; // @[WritingAddressVerifier.scala 33:21]
  assign io___dbgInfo_2 = _T_28 & isInPartition2; // @[WritingAddressVerifier.scala 34:21]
  assign io___dbgInfo_3 = _T_28 & isInPartition3; // @[WritingAddressVerifier.scala 35:21]
  assign io___dbgInfo_4 = _T_28 & isInPartition4; // @[WritingAddressVerifier.scala 36:21]
endmodule
