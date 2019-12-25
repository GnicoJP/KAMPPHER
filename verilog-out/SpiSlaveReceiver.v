module SpiSlaveReceiver(
  input         clock,
  input         reset,
  input  [7:0]  io_InputBuffer,
  input         io_BufferChanged,
  input  [31:0] io_DataBlockSize,
  output        io_CommandReadFinished,
  output        io_ArgumentReadFinished,
  output        io_ReadSuccess,
  output [5:0]  io_Command,
  output [31:0] io_CommandArgument,
  output [31:0] io_WritingAddress,
  output        io_WaitingWriteToken,
  output [2:0]  io____state
);
  reg  writestate_isMultiple; // @[SpiSlaveReceiver.scala 28:36]
  reg [31:0] _RAND_0;
  reg [1:0] state; // @[SpiSlaveReceiver.scala 29:24]
  reg [31:0] _RAND_1;
  reg [1:0] writestate; // @[SpiSlaveReceiver.scala 30:29]
  reg [31:0] _RAND_2;
  reg  readSuccess; // @[SpiSlaveReceiver.scala 35:30]
  reg [31:0] _RAND_3;
  reg  commandVec_0; // @[SpiSlaveReceiver.scala 37:25]
  reg [31:0] _RAND_4;
  reg  commandVec_1; // @[SpiSlaveReceiver.scala 37:25]
  reg [31:0] _RAND_5;
  reg  commandVec_2; // @[SpiSlaveReceiver.scala 37:25]
  reg [31:0] _RAND_6;
  reg  commandVec_3; // @[SpiSlaveReceiver.scala 37:25]
  reg [31:0] _RAND_7;
  reg  commandVec_4; // @[SpiSlaveReceiver.scala 37:25]
  reg [31:0] _RAND_8;
  reg  commandVec_5; // @[SpiSlaveReceiver.scala 37:25]
  reg [31:0] _RAND_9;
  reg  commandArgumentVec_0; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_10;
  reg  commandArgumentVec_1; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_11;
  reg  commandArgumentVec_2; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_12;
  reg  commandArgumentVec_3; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_13;
  reg  commandArgumentVec_4; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_14;
  reg  commandArgumentVec_5; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_15;
  reg  commandArgumentVec_6; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_16;
  reg  commandArgumentVec_7; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_17;
  reg  commandArgumentVec_8; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_18;
  reg  commandArgumentVec_9; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_19;
  reg  commandArgumentVec_10; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_20;
  reg  commandArgumentVec_11; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_21;
  reg  commandArgumentVec_12; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_22;
  reg  commandArgumentVec_13; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_23;
  reg  commandArgumentVec_14; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_24;
  reg  commandArgumentVec_15; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_25;
  reg  commandArgumentVec_16; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_26;
  reg  commandArgumentVec_17; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_27;
  reg  commandArgumentVec_18; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_28;
  reg  commandArgumentVec_19; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_29;
  reg  commandArgumentVec_20; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_30;
  reg  commandArgumentVec_21; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_31;
  reg  commandArgumentVec_22; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_32;
  reg  commandArgumentVec_23; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_33;
  reg  commandArgumentVec_24; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_34;
  reg  commandArgumentVec_25; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_35;
  reg  commandArgumentVec_26; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_36;
  reg  commandArgumentVec_27; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_37;
  reg  commandArgumentVec_28; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_38;
  reg  commandArgumentVec_29; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_39;
  reg  commandArgumentVec_30; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_40;
  reg  commandArgumentVec_31; // @[SpiSlaveReceiver.scala 38:33]
  reg [31:0] _RAND_41;
  wire [2:0] _T_2; // @[SpiSlaveReceiver.scala 41:36]
  wire [2:0] _T_4; // @[SpiSlaveReceiver.scala 41:36]
  wire [5:0] commandVecAsUInt; // @[SpiSlaveReceiver.scala 41:36]
  wire [7:0] _T_12; // @[SpiSlaveReceiver.scala 42:52]
  wire [15:0] _T_20; // @[SpiSlaveReceiver.scala 42:52]
  wire [7:0] _T_27; // @[SpiSlaveReceiver.scala 42:52]
  wire [15:0] _T_35; // @[SpiSlaveReceiver.scala 42:52]
  wire [31:0] commandArgumentVecAsUInt; // @[SpiSlaveReceiver.scala 42:52]
  reg [31:0] writingAddress; // @[SpiSlaveReceiver.scala 44:29]
  reg [31:0] _RAND_42;
  reg [31:0] counter; // @[SpiSlaveReceiver.scala 47:22]
  reg [31:0] _RAND_43;
  reg  _T_39; // @[SpiSlaveReceiver.scala 10:27]
  reg [31:0] _RAND_44;
  wire  _T_40; // @[SpiSlaveReceiver.scala 11:11]
  reg  _T_41; // @[SpiSlaveReceiver.scala 11:30]
  reg [31:0] _RAND_45;
  wire  _T_42; // @[SpiSlaveReceiver.scala 11:22]
  wire  _T_43; // @[SpiSlaveReceiver.scala 11:19]
  wire  _T_44; // @[Conditional.scala 37:30]
  wire  _T_45; // @[SpiSlaveReceiver.scala 60:36]
  wire  _T_46; // @[SpiSlaveReceiver.scala 60:40]
  wire  _T_47; // @[SpiSlaveReceiver.scala 60:69]
  wire  _T_49; // @[SpiSlaveReceiver.scala 60:52]
  wire  _T_50; // @[SpiSlaveReceiver.scala 63:58]
  wire  _T_51; // @[SpiSlaveReceiver.scala 63:58]
  wire  _T_52; // @[SpiSlaveReceiver.scala 63:58]
  wire  _T_53; // @[SpiSlaveReceiver.scala 63:58]
  wire  _T_54; // @[SpiSlaveReceiver.scala 63:58]
  wire  _T_55; // @[SpiSlaveReceiver.scala 63:58]
  wire  _T_56; // @[Conditional.scala 37:30]
  wire  _T_57; // @[Conditional.scala 37:30]
  wire  _T_66; // @[Conditional.scala 37:30]
  wire  _T_75; // @[Conditional.scala 37:30]
  wire  _T_84; // @[Conditional.scala 37:30]
  wire [31:0] _T_94; // @[SpiSlaveReceiver.scala 87:36]
  wire  _T_95; // @[Conditional.scala 37:30]
  wire  _T_106; // @[SpiSlaveReceiver.scala 94:43]
  wire  _T_107; // @[SpiSlaveReceiver.scala 98:49]
  wire  _T_108; // @[Conditional.scala 37:30]
  wire  _T_109; // @[Conditional.scala 37:30]
  wire  _T_110; // @[SpiSlaveReceiver.scala 115:45]
  wire  _T_111; // @[SpiSlaveReceiver.scala 119:53]
  wire  _T_112; // @[SpiSlaveReceiver.scala 123:53]
  wire  _T_113; // @[Conditional.scala 37:30]
  wire  _T_114; // @[SpiSlaveReceiver.scala 130:38]
  wire  _T_117; // @[Conditional.scala 37:30]
  wire  _T_118; // @[SpiSlaveReceiver.scala 138:38]
  wire [31:0] _T_121; // @[SpiSlaveReceiver.scala 142:62]
  assign _T_2 = {commandVec_2,commandVec_1,commandVec_0}; // @[SpiSlaveReceiver.scala 41:36]
  assign _T_4 = {commandVec_5,commandVec_4,commandVec_3}; // @[SpiSlaveReceiver.scala 41:36]
  assign commandVecAsUInt = {commandVec_5,commandVec_4,commandVec_3,commandVec_2,commandVec_1,commandVec_0}; // @[SpiSlaveReceiver.scala 41:36]
  assign _T_12 = {commandArgumentVec_7,commandArgumentVec_6,commandArgumentVec_5,commandArgumentVec_4,commandArgumentVec_3,commandArgumentVec_2,commandArgumentVec_1,commandArgumentVec_0}; // @[SpiSlaveReceiver.scala 42:52]
  assign _T_20 = {commandArgumentVec_15,commandArgumentVec_14,commandArgumentVec_13,commandArgumentVec_12,commandArgumentVec_11,commandArgumentVec_10,commandArgumentVec_9,commandArgumentVec_8,_T_12}; // @[SpiSlaveReceiver.scala 42:52]
  assign _T_27 = {commandArgumentVec_23,commandArgumentVec_22,commandArgumentVec_21,commandArgumentVec_20,commandArgumentVec_19,commandArgumentVec_18,commandArgumentVec_17,commandArgumentVec_16}; // @[SpiSlaveReceiver.scala 42:52]
  assign _T_35 = {commandArgumentVec_31,commandArgumentVec_30,commandArgumentVec_29,commandArgumentVec_28,commandArgumentVec_27,commandArgumentVec_26,commandArgumentVec_25,commandArgumentVec_24,_T_27}; // @[SpiSlaveReceiver.scala 42:52]
  assign commandArgumentVecAsUInt = {commandArgumentVec_31,commandArgumentVec_30,commandArgumentVec_29,commandArgumentVec_28,commandArgumentVec_27,commandArgumentVec_26,commandArgumentVec_25,commandArgumentVec_24,_T_27,_T_20}; // @[SpiSlaveReceiver.scala 42:52]
  assign _T_40 = io_BufferChanged & _T_39; // @[SpiSlaveReceiver.scala 11:11]
  assign _T_42 = _T_41 == 1'h0; // @[SpiSlaveReceiver.scala 11:22]
  assign _T_43 = _T_40 & _T_42; // @[SpiSlaveReceiver.scala 11:19]
  assign _T_44 = 2'h0 == state; // @[Conditional.scala 37:30]
  assign _T_45 = io_InputBuffer[7]; // @[SpiSlaveReceiver.scala 60:36]
  assign _T_46 = _T_45 == 1'h0; // @[SpiSlaveReceiver.scala 60:40]
  assign _T_47 = io_InputBuffer[6]; // @[SpiSlaveReceiver.scala 60:69]
  assign _T_49 = _T_46 & _T_47; // @[SpiSlaveReceiver.scala 60:52]
  assign _T_50 = io_InputBuffer[0]; // @[SpiSlaveReceiver.scala 63:58]
  assign _T_51 = io_InputBuffer[1]; // @[SpiSlaveReceiver.scala 63:58]
  assign _T_52 = io_InputBuffer[2]; // @[SpiSlaveReceiver.scala 63:58]
  assign _T_53 = io_InputBuffer[3]; // @[SpiSlaveReceiver.scala 63:58]
  assign _T_54 = io_InputBuffer[4]; // @[SpiSlaveReceiver.scala 63:58]
  assign _T_55 = io_InputBuffer[5]; // @[SpiSlaveReceiver.scala 63:58]
  assign _T_56 = 2'h1 == state; // @[Conditional.scala 37:30]
  assign _T_57 = 32'h0 == counter; // @[Conditional.scala 37:30]
  assign _T_66 = 32'h1 == counter; // @[Conditional.scala 37:30]
  assign _T_75 = 32'h2 == counter; // @[Conditional.scala 37:30]
  assign _T_84 = 32'h3 == counter; // @[Conditional.scala 37:30]
  assign _T_94 = counter + 32'h1; // @[SpiSlaveReceiver.scala 87:36]
  assign _T_95 = 2'h2 == state; // @[Conditional.scala 37:30]
  assign _T_106 = commandVecAsUInt == 6'h18; // @[SpiSlaveReceiver.scala 94:43]
  assign _T_107 = commandVecAsUInt == 6'h19; // @[SpiSlaveReceiver.scala 98:49]
  assign _T_108 = 2'h3 == state; // @[Conditional.scala 37:30]
  assign _T_109 = 2'h0 == writestate; // @[Conditional.scala 37:30]
  assign _T_110 = io_InputBuffer == 8'hfd; // @[SpiSlaveReceiver.scala 115:45]
  assign _T_111 = io_InputBuffer == 8'hfc; // @[SpiSlaveReceiver.scala 119:53]
  assign _T_112 = io_InputBuffer == 8'hfe; // @[SpiSlaveReceiver.scala 123:53]
  assign _T_113 = 2'h1 == writestate; // @[Conditional.scala 37:30]
  assign _T_114 = counter == io_DataBlockSize; // @[SpiSlaveReceiver.scala 130:38]
  assign _T_117 = 2'h2 == writestate; // @[Conditional.scala 37:30]
  assign _T_118 = counter == 32'h2; // @[SpiSlaveReceiver.scala 138:38]
  assign _T_121 = writingAddress + io_DataBlockSize; // @[SpiSlaveReceiver.scala 142:62]
  assign io_CommandReadFinished = state > 2'h0; // @[SpiSlaveReceiver.scala 52:28]
  assign io_ArgumentReadFinished = state > 2'h1; // @[SpiSlaveReceiver.scala 53:29]
  assign io_ReadSuccess = readSuccess; // @[SpiSlaveReceiver.scala 54:20]
  assign io_Command = {_T_4,_T_2}; // @[SpiSlaveReceiver.scala 49:16]
  assign io_CommandArgument = {_T_35,_T_20}; // @[SpiSlaveReceiver.scala 50:24]
  assign io_WritingAddress = writingAddress; // @[SpiSlaveReceiver.scala 45:23]
  assign io_WaitingWriteToken = writestate == 2'h0; // @[SpiSlaveReceiver.scala 32:26]
  assign io____state = {{1'd0}, state}; // @[SpiSlaveReceiver.scala 31:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  writestate_isMultiple = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  writestate = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  readSuccess = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  commandVec_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  commandVec_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  commandVec_2 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  commandVec_3 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  commandVec_4 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  commandVec_5 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  commandArgumentVec_0 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  commandArgumentVec_1 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  commandArgumentVec_2 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  commandArgumentVec_3 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  commandArgumentVec_4 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  commandArgumentVec_5 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  commandArgumentVec_6 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  commandArgumentVec_7 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  commandArgumentVec_8 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  commandArgumentVec_9 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  commandArgumentVec_10 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  commandArgumentVec_11 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  commandArgumentVec_12 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  commandArgumentVec_13 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  commandArgumentVec_14 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  commandArgumentVec_15 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  commandArgumentVec_16 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  commandArgumentVec_17 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  commandArgumentVec_18 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  commandArgumentVec_19 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  commandArgumentVec_20 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  commandArgumentVec_21 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  commandArgumentVec_22 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  commandArgumentVec_23 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  commandArgumentVec_24 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  commandArgumentVec_25 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  commandArgumentVec_26 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  commandArgumentVec_27 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  commandArgumentVec_28 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  commandArgumentVec_29 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  commandArgumentVec_30 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  commandArgumentVec_31 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  writingAddress = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  counter = _RAND_43[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_39 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_41 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (_T_43) begin
      if (!(_T_44)) begin
        if (!(_T_56)) begin
          if (_T_95) begin
            if (_T_50) begin
              if (_T_106) begin
                writestate_isMultiple <= 1'h0;
              end else begin
                writestate_isMultiple <= _T_107;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_43) begin
        if (_T_44) begin
          if (_T_49) begin
            state <= 2'h1;
          end
        end else begin
          if (_T_56) begin
            if (!(_T_57)) begin
              if (!(_T_66)) begin
                if (!(_T_75)) begin
                  if (_T_84) begin
                    state <= 2'h2;
                  end
                end
              end
            end
          end else begin
            if (_T_95) begin
              if (_T_50) begin
                if (_T_106) begin
                  state <= 2'h3;
                end else begin
                  if (_T_107) begin
                    state <= 2'h3;
                  end else begin
                    state <= 2'h0;
                  end
                end
              end else begin
                state <= 2'h0;
              end
            end else begin
              if (_T_108) begin
                if (_T_109) begin
                  if (_T_110) begin
                    state <= 2'h0;
                  end
                end else begin
                  if (!(_T_113)) begin
                    if (_T_117) begin
                      if (_T_118) begin
                        if (writestate_isMultiple) begin
                          state <= 2'h3;
                        end else begin
                          state <= 2'h0;
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      writestate <= 2'h0;
    end else begin
      if (_T_43) begin
        if (!(_T_44)) begin
          if (!(_T_56)) begin
            if (_T_95) begin
              if (_T_50) begin
                writestate <= 2'h0;
              end
            end else begin
              if (_T_108) begin
                if (_T_109) begin
                  if (!(_T_110)) begin
                    if (writestate_isMultiple) begin
                      if (_T_111) begin
                        writestate <= 2'h1;
                      end
                    end else begin
                      if (_T_112) begin
                        writestate <= 2'h1;
                      end
                    end
                  end
                end else begin
                  if (_T_113) begin
                    if (_T_114) begin
                      writestate <= 2'h2;
                    end
                  end else begin
                    if (_T_117) begin
                      if (_T_118) begin
                        writestate <= 2'h0;
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      readSuccess <= 1'h0;
    end else begin
      if (_T_43) begin
        if (_T_44) begin
          readSuccess <= 1'h0;
        end else begin
          if (!(_T_56)) begin
            if (_T_95) begin
              readSuccess <= _T_50;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (_T_44) begin
        if (_T_49) begin
          commandVec_0 <= _T_50;
        end
      end
    end
    if (_T_43) begin
      if (_T_44) begin
        if (_T_49) begin
          commandVec_1 <= _T_51;
        end
      end
    end
    if (_T_43) begin
      if (_T_44) begin
        if (_T_49) begin
          commandVec_2 <= _T_52;
        end
      end
    end
    if (_T_43) begin
      if (_T_44) begin
        if (_T_49) begin
          commandVec_3 <= _T_53;
        end
      end
    end
    if (_T_43) begin
      if (_T_44) begin
        if (_T_49) begin
          commandVec_4 <= _T_54;
        end
      end
    end
    if (_T_43) begin
      if (_T_44) begin
        if (_T_49) begin
          commandVec_5 <= _T_55;
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (!(_T_75)) begin
                if (_T_84) begin
                  commandArgumentVec_0 <= _T_50;
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (!(_T_75)) begin
                if (_T_84) begin
                  commandArgumentVec_1 <= _T_51;
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (!(_T_75)) begin
                if (_T_84) begin
                  commandArgumentVec_2 <= _T_52;
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (!(_T_75)) begin
                if (_T_84) begin
                  commandArgumentVec_3 <= _T_53;
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (!(_T_75)) begin
                if (_T_84) begin
                  commandArgumentVec_4 <= _T_54;
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (!(_T_75)) begin
                if (_T_84) begin
                  commandArgumentVec_5 <= _T_55;
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (!(_T_75)) begin
                if (_T_84) begin
                  commandArgumentVec_6 <= _T_47;
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (!(_T_75)) begin
                if (_T_84) begin
                  commandArgumentVec_7 <= _T_45;
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (_T_75) begin
                commandArgumentVec_8 <= _T_50;
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (_T_75) begin
                commandArgumentVec_9 <= _T_51;
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (_T_75) begin
                commandArgumentVec_10 <= _T_52;
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (_T_75) begin
                commandArgumentVec_11 <= _T_53;
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (_T_75) begin
                commandArgumentVec_12 <= _T_54;
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (_T_75) begin
                commandArgumentVec_13 <= _T_55;
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (_T_75) begin
                commandArgumentVec_14 <= _T_47;
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (!(_T_66)) begin
              if (_T_75) begin
                commandArgumentVec_15 <= _T_45;
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (_T_66) begin
              commandArgumentVec_16 <= _T_50;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (_T_66) begin
              commandArgumentVec_17 <= _T_51;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (_T_66) begin
              commandArgumentVec_18 <= _T_52;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (_T_66) begin
              commandArgumentVec_19 <= _T_53;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (_T_66) begin
              commandArgumentVec_20 <= _T_54;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (_T_66) begin
              commandArgumentVec_21 <= _T_55;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (_T_66) begin
              commandArgumentVec_22 <= _T_47;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (!(_T_57)) begin
            if (_T_66) begin
              commandArgumentVec_23 <= _T_45;
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (_T_57) begin
            commandArgumentVec_24 <= _T_50;
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (_T_57) begin
            commandArgumentVec_25 <= _T_51;
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (_T_57) begin
            commandArgumentVec_26 <= _T_52;
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (_T_57) begin
            commandArgumentVec_27 <= _T_53;
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (_T_57) begin
            commandArgumentVec_28 <= _T_54;
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (_T_57) begin
            commandArgumentVec_29 <= _T_55;
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (_T_57) begin
            commandArgumentVec_30 <= _T_47;
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (_T_56) begin
          if (_T_57) begin
            commandArgumentVec_31 <= _T_45;
          end
        end
      end
    end
    if (_T_43) begin
      if (!(_T_44)) begin
        if (!(_T_56)) begin
          if (_T_95) begin
            if (_T_50) begin
              if (_T_106) begin
                writingAddress <= commandArgumentVecAsUInt;
              end else begin
                if (_T_107) begin
                  writingAddress <= commandArgumentVecAsUInt;
                end
              end
            end
          end else begin
            if (_T_108) begin
              if (!(_T_109)) begin
                if (!(_T_113)) begin
                  if (_T_117) begin
                    if (_T_118) begin
                      writingAddress <= _T_121;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_43) begin
      if (_T_44) begin
        if (_T_49) begin
          counter <= 32'h0;
        end
      end else begin
        if (_T_56) begin
          counter <= _T_94;
        end else begin
          if (!(_T_95)) begin
            if (_T_108) begin
              if (_T_109) begin
                counter <= 32'h1;
              end else begin
                if (_T_113) begin
                  if (_T_114) begin
                    counter <= 32'h1;
                  end else begin
                    counter <= _T_94;
                  end
                end else begin
                  if (_T_117) begin
                    if (_T_118) begin
                      counter <= 32'h0;
                    end else begin
                      counter <= _T_94;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    _T_39 <= io_BufferChanged;
    _T_41 <= _T_39;
  end
endmodule
