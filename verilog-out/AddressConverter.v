module AddressConverter(
  input         clock,
  input         reset,
  input  [31:0] io_InputPartition1Start,
  input  [31:0] io_InputPartition2Start,
  input  [31:0] io_InputPartition3Start,
  input  [31:0] io_InputPartition4Start,
  output [31:0] io_OutputPartition1Start,
  output [31:0] io_OutputPartition2Start,
  output [31:0] io_OutputPartition3Start,
  output [31:0] io_OutputPartition4Start
);
  wire [40:0] _T; // @[AddressConverter.scala 20:42]
  wire [31:0] p1conved; // @[AddressConverter.scala 20:47]
  wire [40:0] _T_2; // @[AddressConverter.scala 22:42]
  wire [31:0] p2conved; // @[AddressConverter.scala 22:47]
  wire [40:0] _T_4; // @[AddressConverter.scala 24:42]
  wire [31:0] p3conved; // @[AddressConverter.scala 24:47]
  wire [40:0] _T_6; // @[AddressConverter.scala 26:42]
  wire [31:0] p4conved; // @[AddressConverter.scala 26:47]
  wire  _T_8; // @[AddressConverter.scala 28:46]
  wire  _T_9; // @[AddressConverter.scala 28:50]
  wire  _T_11; // @[AddressConverter.scala 29:46]
  wire  _T_12; // @[AddressConverter.scala 29:50]
  wire  _T_14; // @[AddressConverter.scala 30:46]
  wire  _T_15; // @[AddressConverter.scala 30:50]
  wire  _T_17; // @[AddressConverter.scala 31:46]
  wire  _T_18; // @[AddressConverter.scala 31:50]
  assign _T = {io_InputPartition1Start, 9'h0}; // @[AddressConverter.scala 20:42]
  assign p1conved = _T[31:0]; // @[AddressConverter.scala 20:47]
  assign _T_2 = {io_InputPartition2Start, 9'h0}; // @[AddressConverter.scala 22:42]
  assign p2conved = _T_2[31:0]; // @[AddressConverter.scala 22:47]
  assign _T_4 = {io_InputPartition3Start, 9'h0}; // @[AddressConverter.scala 24:42]
  assign p3conved = _T_4[31:0]; // @[AddressConverter.scala 24:47]
  assign _T_6 = {io_InputPartition4Start, 9'h0}; // @[AddressConverter.scala 26:42]
  assign p4conved = _T_6[31:0]; // @[AddressConverter.scala 26:47]
  assign _T_8 = p1conved != 32'h0; // @[AddressConverter.scala 28:46]
  assign _T_9 = _T_8 == 1'h0; // @[AddressConverter.scala 28:50]
  assign _T_11 = p2conved != 32'h0; // @[AddressConverter.scala 29:46]
  assign _T_12 = _T_11 == 1'h0; // @[AddressConverter.scala 29:50]
  assign _T_14 = p3conved != 32'h0; // @[AddressConverter.scala 30:46]
  assign _T_15 = _T_14 == 1'h0; // @[AddressConverter.scala 30:50]
  assign _T_17 = p4conved != 32'h0; // @[AddressConverter.scala 31:46]
  assign _T_18 = _T_17 == 1'h0; // @[AddressConverter.scala 31:50]
  assign io_OutputPartition1Start = _T_9 ? 32'hffffffff : p1conved; // @[AddressConverter.scala 28:30]
  assign io_OutputPartition2Start = _T_12 ? 32'hffffffff : p2conved; // @[AddressConverter.scala 29:30]
  assign io_OutputPartition3Start = _T_15 ? 32'hffffffff : p3conved; // @[AddressConverter.scala 30:30]
  assign io_OutputPartition4Start = _T_18 ? 32'hffffffff : p4conved; // @[AddressConverter.scala 31:30]
endmodule
