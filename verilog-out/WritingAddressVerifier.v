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
  output        io_IsOk
);
  wire  isInMBR; // @[WritingAddressVerifier.scala 20:40]
  wire  _T_1; // @[WritingAddressVerifier.scala 22:48]
  wire  _T_2; // @[WritingAddressVerifier.scala 22:99]
  wire  isInPartition1; // @[WritingAddressVerifier.scala 22:71]
  wire  _T_4; // @[WritingAddressVerifier.scala 24:48]
  wire  _T_5; // @[WritingAddressVerifier.scala 24:99]
  wire  isInPartition2; // @[WritingAddressVerifier.scala 24:71]
  wire  _T_7; // @[WritingAddressVerifier.scala 26:48]
  wire  _T_8; // @[WritingAddressVerifier.scala 26:99]
  wire  isInPartition3; // @[WritingAddressVerifier.scala 26:71]
  wire  isInPartition4; // @[WritingAddressVerifier.scala 28:47]
  wire  _T_11; // @[WritingAddressVerifier.scala 30:38]
  wire  _T_12; // @[WritingAddressVerifier.scala 30:67]
  wire  _T_13; // @[WritingAddressVerifier.scala 30:47]
  wire  _T_14; // @[WritingAddressVerifier.scala 30:77]
  wire  _T_15; // @[WritingAddressVerifier.scala 31:22]
  wire  _T_16; // @[WritingAddressVerifier.scala 31:31]
  wire  _T_17; // @[WritingAddressVerifier.scala 32:22]
  wire  _T_18; // @[WritingAddressVerifier.scala 32:38]
  wire  _T_19; // @[WritingAddressVerifier.scala 31:63]
  wire  _T_20; // @[WritingAddressVerifier.scala 33:22]
  wire  _T_21; // @[WritingAddressVerifier.scala 33:38]
  wire  _T_22; // @[WritingAddressVerifier.scala 32:70]
  wire  _T_23; // @[WritingAddressVerifier.scala 34:22]
  wire  _T_24; // @[WritingAddressVerifier.scala 34:38]
  wire  _T_25; // @[WritingAddressVerifier.scala 33:70]
  wire  _T_26; // @[WritingAddressVerifier.scala 35:22]
  wire  _T_27; // @[WritingAddressVerifier.scala 35:38]
  wire  _T_28; // @[WritingAddressVerifier.scala 34:70]
  assign isInMBR = io_MasterWritingAddress < io_Partition1Start; // @[WritingAddressVerifier.scala 20:40]
  assign _T_1 = io_MasterWritingAddress >= io_Partition1Start; // @[WritingAddressVerifier.scala 22:48]
  assign _T_2 = io_MasterWritingAddress < io_Partition2Start; // @[WritingAddressVerifier.scala 22:99]
  assign isInPartition1 = _T_1 & _T_2; // @[WritingAddressVerifier.scala 22:71]
  assign _T_4 = io_MasterWritingAddress >= io_Partition2Start; // @[WritingAddressVerifier.scala 24:48]
  assign _T_5 = io_MasterWritingAddress < io_Partition3Start; // @[WritingAddressVerifier.scala 24:99]
  assign isInPartition2 = _T_4 & _T_5; // @[WritingAddressVerifier.scala 24:71]
  assign _T_7 = io_MasterWritingAddress >= io_Partition3Start; // @[WritingAddressVerifier.scala 26:48]
  assign _T_8 = io_MasterWritingAddress < io_Partition4Start; // @[WritingAddressVerifier.scala 26:99]
  assign isInPartition3 = _T_7 & _T_8; // @[WritingAddressVerifier.scala 26:71]
  assign isInPartition4 = io_MasterWritingAddress >= io_Partition4Start; // @[WritingAddressVerifier.scala 28:47]
  assign _T_11 = io_MasterCommand == 6'h18; // @[WritingAddressVerifier.scala 30:38]
  assign _T_12 = io_MasterCommand == 6'h19; // @[WritingAddressVerifier.scala 30:67]
  assign _T_13 = _T_11 | _T_12; // @[WritingAddressVerifier.scala 30:47]
  assign _T_14 = _T_13 & io_MasterCommandReadSuccess; // @[WritingAddressVerifier.scala 30:77]
  assign _T_15 = ~ isInMBR; // @[WritingAddressVerifier.scala 31:22]
  assign _T_16 = _T_15 | io_PartitionWriteEnables_0; // @[WritingAddressVerifier.scala 31:31]
  assign _T_17 = ~ isInPartition1; // @[WritingAddressVerifier.scala 32:22]
  assign _T_18 = _T_17 | io_PartitionWriteEnables_1; // @[WritingAddressVerifier.scala 32:38]
  assign _T_19 = _T_16 & _T_18; // @[WritingAddressVerifier.scala 31:63]
  assign _T_20 = ~ isInPartition2; // @[WritingAddressVerifier.scala 33:22]
  assign _T_21 = _T_20 | io_PartitionWriteEnables_2; // @[WritingAddressVerifier.scala 33:38]
  assign _T_22 = _T_19 & _T_21; // @[WritingAddressVerifier.scala 32:70]
  assign _T_23 = ~ isInPartition3; // @[WritingAddressVerifier.scala 34:22]
  assign _T_24 = _T_23 | io_PartitionWriteEnables_3; // @[WritingAddressVerifier.scala 34:38]
  assign _T_25 = _T_22 & _T_24; // @[WritingAddressVerifier.scala 33:70]
  assign _T_26 = ~ isInPartition4; // @[WritingAddressVerifier.scala 35:22]
  assign _T_27 = _T_26 | io_PartitionWriteEnables_4; // @[WritingAddressVerifier.scala 35:38]
  assign _T_28 = _T_25 & _T_27; // @[WritingAddressVerifier.scala 34:70]
  assign io_IsOk = _T_14 ? _T_28 : 1'h1; // @[WritingAddressVerifier.scala 30:13]
endmodule
