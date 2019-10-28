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
  output [2:0]  io____state
);
  reg  writestate_isSingle; // @[SpiSlaveReceiver.scala 26:34]
  reg [31:0] _RAND_0;
  reg [1:0] state; // @[SpiSlaveReceiver.scala 27:24]
  reg [31:0] _RAND_1;
  reg [1:0] writestate; // @[SpiSlaveReceiver.scala 28:29]
  reg [31:0] _RAND_2;
  reg  readSuccess; // @[SpiSlaveReceiver.scala 32:30]
  reg [31:0] _RAND_3;
  reg  commandVec_0; // @[SpiSlaveReceiver.scala 34:25]
  reg [31:0] _RAND_4;
  reg  commandVec_1; // @[SpiSlaveReceiver.scala 34:25]
  reg [31:0] _RAND_5;
  reg  commandVec_2; // @[SpiSlaveReceiver.scala 34:25]
  reg [31:0] _RAND_6;
  reg  commandVec_3; // @[SpiSlaveReceiver.scala 34:25]
  reg [31:0] _RAND_7;
  reg  commandVec_4; // @[SpiSlaveReceiver.scala 34:25]
  reg [31:0] _RAND_8;
  reg  commandVec_5; // @[SpiSlaveReceiver.scala 34:25]
  reg [31:0] _RAND_9;
  reg  commandArgumentVec_0; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_10;
  reg  commandArgumentVec_1; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_11;
  reg  commandArgumentVec_2; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_12;
  reg  commandArgumentVec_3; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_13;
  reg  commandArgumentVec_4; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_14;
  reg  commandArgumentVec_5; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_15;
  reg  commandArgumentVec_6; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_16;
  reg  commandArgumentVec_7; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_17;
  reg  commandArgumentVec_8; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_18;
  reg  commandArgumentVec_9; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_19;
  reg  commandArgumentVec_10; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_20;
  reg  commandArgumentVec_11; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_21;
  reg  commandArgumentVec_12; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_22;
  reg  commandArgumentVec_13; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_23;
  reg  commandArgumentVec_14; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_24;
  reg  commandArgumentVec_15; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_25;
  reg  commandArgumentVec_16; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_26;
  reg  commandArgumentVec_17; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_27;
  reg  commandArgumentVec_18; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_28;
  reg  commandArgumentVec_19; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_29;
  reg  commandArgumentVec_20; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_30;
  reg  commandArgumentVec_21; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_31;
  reg  commandArgumentVec_22; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_32;
  reg  commandArgumentVec_23; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_33;
  reg  commandArgumentVec_24; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_34;
  reg  commandArgumentVec_25; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_35;
  reg  commandArgumentVec_26; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_36;
  reg  commandArgumentVec_27; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_37;
  reg  commandArgumentVec_28; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_38;
  reg  commandArgumentVec_29; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_39;
  reg  commandArgumentVec_30; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_40;
  reg  commandArgumentVec_31; // @[SpiSlaveReceiver.scala 35:33]
  reg [31:0] _RAND_41;
  wire [2:0] _T_1; // @[SpiSlaveReceiver.scala 37:36]
  wire [2:0] _T_3; // @[SpiSlaveReceiver.scala 37:36]
  wire [5:0] commandVecAsUInt; // @[SpiSlaveReceiver.scala 37:36]
  reg [31:0] counter; // @[SpiSlaveReceiver.scala 39:22]
  reg [31:0] _RAND_42;
  wire [7:0] _T_11; // @[SpiSlaveReceiver.scala 42:46]
  wire [15:0] _T_19; // @[SpiSlaveReceiver.scala 42:46]
  wire [7:0] _T_26; // @[SpiSlaveReceiver.scala 42:46]
  wire [15:0] _T_34; // @[SpiSlaveReceiver.scala 42:46]
  reg  _T_38; // @[SpiSlaveReceiver.scala 10:27]
  reg [31:0] _RAND_43;
  wire  _T_39; // @[SpiSlaveReceiver.scala 11:11]
  reg  _T_40; // @[SpiSlaveReceiver.scala 11:30]
  reg [31:0] _RAND_44;
  wire  _T_41; // @[SpiSlaveReceiver.scala 11:22]
  wire  _T_42; // @[SpiSlaveReceiver.scala 11:19]
  wire  _T_43; // @[Conditional.scala 37:30]
  wire  _T_44; // @[SpiSlaveReceiver.scala 52:36]
  wire  _T_45; // @[SpiSlaveReceiver.scala 52:40]
  wire  _T_46; // @[SpiSlaveReceiver.scala 52:69]
  wire  _T_48; // @[SpiSlaveReceiver.scala 52:52]
  wire  _T_49; // @[SpiSlaveReceiver.scala 55:58]
  wire  _T_50; // @[SpiSlaveReceiver.scala 55:58]
  wire  _T_51; // @[SpiSlaveReceiver.scala 55:58]
  wire  _T_52; // @[SpiSlaveReceiver.scala 55:58]
  wire  _T_53; // @[SpiSlaveReceiver.scala 55:58]
  wire  _T_54; // @[SpiSlaveReceiver.scala 55:58]
  wire  _T_55; // @[Conditional.scala 37:30]
  wire  _T_56; // @[Conditional.scala 37:30]
  wire  _T_65; // @[Conditional.scala 37:30]
  wire  _T_74; // @[Conditional.scala 37:30]
  wire  _T_83; // @[Conditional.scala 37:30]
  wire [31:0] _T_93; // @[SpiSlaveReceiver.scala 79:36]
  wire  _T_94; // @[Conditional.scala 37:30]
  wire  _T_103; // @[SpiSlaveReceiver.scala 85:39]
  wire  _T_104; // @[SpiSlaveReceiver.scala 88:45]
  wire  _GEN_93; // @[SpiSlaveReceiver.scala 88:55]
  wire  _GEN_95; // @[SpiSlaveReceiver.scala 85:49]
  wire  _T_105; // @[Conditional.scala 37:30]
  wire  _T_106; // @[Conditional.scala 37:30]
  wire  _T_107; // @[SpiSlaveReceiver.scala 101:49]
  wire  _T_108; // @[SpiSlaveReceiver.scala 107:49]
  wire  _T_109; // @[SpiSlaveReceiver.scala 109:55]
  wire  _T_110; // @[Conditional.scala 37:30]
  wire  _T_111; // @[SpiSlaveReceiver.scala 115:38]
  wire  _T_114; // @[Conditional.scala 37:30]
  wire  _T_115; // @[SpiSlaveReceiver.scala 124:38]
  assign _T_1 = {commandVec_2,commandVec_1,commandVec_0}; // @[SpiSlaveReceiver.scala 37:36]
  assign _T_3 = {commandVec_5,commandVec_4,commandVec_3}; // @[SpiSlaveReceiver.scala 37:36]
  assign commandVecAsUInt = {commandVec_5,commandVec_4,commandVec_3,commandVec_2,commandVec_1,commandVec_0}; // @[SpiSlaveReceiver.scala 37:36]
  assign _T_11 = {commandArgumentVec_7,commandArgumentVec_6,commandArgumentVec_5,commandArgumentVec_4,commandArgumentVec_3,commandArgumentVec_2,commandArgumentVec_1,commandArgumentVec_0}; // @[SpiSlaveReceiver.scala 42:46]
  assign _T_19 = {commandArgumentVec_15,commandArgumentVec_14,commandArgumentVec_13,commandArgumentVec_12,commandArgumentVec_11,commandArgumentVec_10,commandArgumentVec_9,commandArgumentVec_8,_T_11}; // @[SpiSlaveReceiver.scala 42:46]
  assign _T_26 = {commandArgumentVec_23,commandArgumentVec_22,commandArgumentVec_21,commandArgumentVec_20,commandArgumentVec_19,commandArgumentVec_18,commandArgumentVec_17,commandArgumentVec_16}; // @[SpiSlaveReceiver.scala 42:46]
  assign _T_34 = {commandArgumentVec_31,commandArgumentVec_30,commandArgumentVec_29,commandArgumentVec_28,commandArgumentVec_27,commandArgumentVec_26,commandArgumentVec_25,commandArgumentVec_24,_T_26}; // @[SpiSlaveReceiver.scala 42:46]
  assign _T_39 = io_BufferChanged & _T_38; // @[SpiSlaveReceiver.scala 11:11]
  assign _T_41 = _T_40 == 1'h0; // @[SpiSlaveReceiver.scala 11:22]
  assign _T_42 = _T_39 & _T_41; // @[SpiSlaveReceiver.scala 11:19]
  assign _T_43 = 2'h0 == state; // @[Conditional.scala 37:30]
  assign _T_44 = io_InputBuffer[7]; // @[SpiSlaveReceiver.scala 52:36]
  assign _T_45 = _T_44 == 1'h0; // @[SpiSlaveReceiver.scala 52:40]
  assign _T_46 = io_InputBuffer[6]; // @[SpiSlaveReceiver.scala 52:69]
  assign _T_48 = _T_45 & _T_46; // @[SpiSlaveReceiver.scala 52:52]
  assign _T_49 = io_InputBuffer[0]; // @[SpiSlaveReceiver.scala 55:58]
  assign _T_50 = io_InputBuffer[1]; // @[SpiSlaveReceiver.scala 55:58]
  assign _T_51 = io_InputBuffer[2]; // @[SpiSlaveReceiver.scala 55:58]
  assign _T_52 = io_InputBuffer[3]; // @[SpiSlaveReceiver.scala 55:58]
  assign _T_53 = io_InputBuffer[4]; // @[SpiSlaveReceiver.scala 55:58]
  assign _T_54 = io_InputBuffer[5]; // @[SpiSlaveReceiver.scala 55:58]
  assign _T_55 = 2'h1 == state; // @[Conditional.scala 37:30]
  assign _T_56 = 32'h0 == counter; // @[Conditional.scala 37:30]
  assign _T_65 = 32'h1 == counter; // @[Conditional.scala 37:30]
  assign _T_74 = 32'h2 == counter; // @[Conditional.scala 37:30]
  assign _T_83 = 32'h3 == counter; // @[Conditional.scala 37:30]
  assign _T_93 = counter + 32'h1; // @[SpiSlaveReceiver.scala 79:36]
  assign _T_94 = 2'h2 == state; // @[Conditional.scala 37:30]
  assign _T_103 = commandVecAsUInt == 6'h18; // @[SpiSlaveReceiver.scala 85:39]
  assign _T_104 = commandVecAsUInt == 6'h19; // @[SpiSlaveReceiver.scala 88:45]
  assign _GEN_93 = _T_104 ? 1'h0 : 1'h1; // @[SpiSlaveReceiver.scala 88:55]
  assign _GEN_95 = _T_103 | _GEN_93; // @[SpiSlaveReceiver.scala 85:49]
  assign _T_105 = 2'h3 == state; // @[Conditional.scala 37:30]
  assign _T_106 = 2'h0 == writestate; // @[Conditional.scala 37:30]
  assign _T_107 = io_InputBuffer == 8'hfe; // @[SpiSlaveReceiver.scala 101:49]
  assign _T_108 = io_InputBuffer == 8'hfc; // @[SpiSlaveReceiver.scala 107:49]
  assign _T_109 = io_InputBuffer == 8'hfd; // @[SpiSlaveReceiver.scala 109:55]
  assign _T_110 = 2'h1 == writestate; // @[Conditional.scala 37:30]
  assign _T_111 = counter == io_DataBlockSize; // @[SpiSlaveReceiver.scala 115:38]
  assign _T_114 = 2'h2 == writestate; // @[Conditional.scala 37:30]
  assign _T_115 = counter == 32'h2; // @[SpiSlaveReceiver.scala 124:38]
  assign io_CommandReadFinished = state > 2'h0; // @[SpiSlaveReceiver.scala 44:28]
  assign io_ArgumentReadFinished = state > 2'h1; // @[SpiSlaveReceiver.scala 45:29]
  assign io_ReadSuccess = readSuccess; // @[SpiSlaveReceiver.scala 46:20]
  assign io_Command = {_T_3,_T_1}; // @[SpiSlaveReceiver.scala 41:16]
  assign io_CommandArgument = {_T_34,_T_19}; // @[SpiSlaveReceiver.scala 42:24]
  assign io____state = {{1'd0}, state}; // @[SpiSlaveReceiver.scala 29:17]
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
  writestate_isSingle = _RAND_0[0:0];
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
  counter = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_38 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_40 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (_T_42) begin
      if (!(_T_43)) begin
        if (!(_T_55)) begin
          if (_T_94) begin
            writestate_isSingle <= _GEN_95;
          end
        end
      end
    end
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_42) begin
        if (_T_43) begin
          if (_T_48) begin
            state <= 2'h1;
          end
        end else begin
          if (_T_55) begin
            if (!(_T_56)) begin
              if (!(_T_65)) begin
                if (!(_T_74)) begin
                  if (_T_83) begin
                    state <= 2'h2;
                  end
                end
              end
            end
          end else begin
            if (_T_94) begin
              if (_T_103) begin
                state <= 2'h3;
              end else begin
                if (_T_104) begin
                  state <= 2'h3;
                end else begin
                  state <= 2'h0;
                end
              end
            end else begin
              if (_T_105) begin
                if (_T_106) begin
                  if (!(writestate_isSingle)) begin
                    if (!(_T_108)) begin
                      if (_T_109) begin
                        state <= 2'h0;
                      end
                    end
                  end
                end else begin
                  if (!(_T_110)) begin
                    if (_T_114) begin
                      if (_T_115) begin
                        if (writestate_isSingle) begin
                          state <= 2'h0;
                        end else begin
                          state <= 2'h3;
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
      if (_T_42) begin
        if (!(_T_43)) begin
          if (!(_T_55)) begin
            if (_T_94) begin
              writestate <= 2'h0;
            end else begin
              if (_T_105) begin
                if (_T_106) begin
                  if (writestate_isSingle) begin
                    if (_T_107) begin
                      writestate <= 2'h1;
                    end
                  end else begin
                    if (_T_108) begin
                      writestate <= 2'h1;
                    end
                  end
                end else begin
                  if (_T_110) begin
                    if (_T_111) begin
                      writestate <= 2'h2;
                    end
                  end else begin
                    if (_T_114) begin
                      if (_T_115) begin
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
      if (_T_42) begin
        if (_T_43) begin
          readSuccess <= 1'h0;
        end else begin
          if (!(_T_55)) begin
            if (_T_94) begin
              readSuccess <= _T_49;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (_T_43) begin
        if (_T_48) begin
          commandVec_0 <= _T_49;
        end
      end
    end
    if (_T_42) begin
      if (_T_43) begin
        if (_T_48) begin
          commandVec_1 <= _T_50;
        end
      end
    end
    if (_T_42) begin
      if (_T_43) begin
        if (_T_48) begin
          commandVec_2 <= _T_51;
        end
      end
    end
    if (_T_42) begin
      if (_T_43) begin
        if (_T_48) begin
          commandVec_3 <= _T_52;
        end
      end
    end
    if (_T_42) begin
      if (_T_43) begin
        if (_T_48) begin
          commandVec_4 <= _T_53;
        end
      end
    end
    if (_T_42) begin
      if (_T_43) begin
        if (_T_48) begin
          commandVec_5 <= _T_54;
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (!(_T_74)) begin
                if (_T_83) begin
                  commandArgumentVec_0 <= _T_49;
                end
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (!(_T_74)) begin
                if (_T_83) begin
                  commandArgumentVec_1 <= _T_50;
                end
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (!(_T_74)) begin
                if (_T_83) begin
                  commandArgumentVec_2 <= _T_51;
                end
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (!(_T_74)) begin
                if (_T_83) begin
                  commandArgumentVec_3 <= _T_52;
                end
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (!(_T_74)) begin
                if (_T_83) begin
                  commandArgumentVec_4 <= _T_53;
                end
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (!(_T_74)) begin
                if (_T_83) begin
                  commandArgumentVec_5 <= _T_54;
                end
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (!(_T_74)) begin
                if (_T_83) begin
                  commandArgumentVec_6 <= _T_46;
                end
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (!(_T_74)) begin
                if (_T_83) begin
                  commandArgumentVec_7 <= _T_44;
                end
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (_T_74) begin
                commandArgumentVec_8 <= _T_49;
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (_T_74) begin
                commandArgumentVec_9 <= _T_50;
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (_T_74) begin
                commandArgumentVec_10 <= _T_51;
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (_T_74) begin
                commandArgumentVec_11 <= _T_52;
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (_T_74) begin
                commandArgumentVec_12 <= _T_53;
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (_T_74) begin
                commandArgumentVec_13 <= _T_54;
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (_T_74) begin
                commandArgumentVec_14 <= _T_46;
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (!(_T_65)) begin
              if (_T_74) begin
                commandArgumentVec_15 <= _T_44;
              end
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (_T_65) begin
              commandArgumentVec_16 <= _T_49;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (_T_65) begin
              commandArgumentVec_17 <= _T_50;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (_T_65) begin
              commandArgumentVec_18 <= _T_51;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (_T_65) begin
              commandArgumentVec_19 <= _T_52;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (_T_65) begin
              commandArgumentVec_20 <= _T_53;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (_T_65) begin
              commandArgumentVec_21 <= _T_54;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (_T_65) begin
              commandArgumentVec_22 <= _T_46;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (!(_T_56)) begin
            if (_T_65) begin
              commandArgumentVec_23 <= _T_44;
            end
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (_T_56) begin
            commandArgumentVec_24 <= _T_49;
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (_T_56) begin
            commandArgumentVec_25 <= _T_50;
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (_T_56) begin
            commandArgumentVec_26 <= _T_51;
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (_T_56) begin
            commandArgumentVec_27 <= _T_52;
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (_T_56) begin
            commandArgumentVec_28 <= _T_53;
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (_T_56) begin
            commandArgumentVec_29 <= _T_54;
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (_T_56) begin
            commandArgumentVec_30 <= _T_46;
          end
        end
      end
    end
    if (_T_42) begin
      if (!(_T_43)) begin
        if (_T_55) begin
          if (_T_56) begin
            commandArgumentVec_31 <= _T_44;
          end
        end
      end
    end
    if (_T_42) begin
      if (_T_43) begin
        if (_T_48) begin
          counter <= 32'h0;
        end
      end else begin
        if (_T_55) begin
          counter <= _T_93;
        end else begin
          if (!(_T_94)) begin
            if (_T_105) begin
              if (_T_106) begin
                if (writestate_isSingle) begin
                  if (_T_107) begin
                    counter <= 32'h1;
                  end
                end else begin
                  counter <= 32'h1;
                end
              end else begin
                if (_T_110) begin
                  if (_T_111) begin
                    counter <= 32'h1;
                  end else begin
                    counter <= _T_93;
                  end
                end else begin
                  if (_T_114) begin
                    if (_T_115) begin
                      counter <= 32'h0;
                    end else begin
                      counter <= _T_93;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    _T_38 <= io_BufferChanged;
    _T_40 <= _T_38;
  end
endmodule
