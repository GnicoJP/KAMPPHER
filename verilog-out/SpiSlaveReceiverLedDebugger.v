module SpiSlaveReceiverLedDebugger( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_CommandReadFinished, // @[:@6.4]
  input         io_ArgumentReadFinished, // @[:@6.4]
  input         io_ReadSuccess, // @[:@6.4]
  input  [5:0]  io_Command, // @[:@6.4]
  input  [31:0] io_CommandArgument, // @[:@6.4]
  output        io_CMD0, // @[:@6.4]
  output        io_CMD8, // @[:@6.4]
  output        io_ACMD41, // @[:@6.4]
  output        io_CMD16, // @[:@6.4]
  output        io_CMD55 // @[:@6.4]
);
  reg  after_apcommand; // @[SpiSlaveReceiverLedDebugger.scala 24:34:@8.4]
  reg [31:0] _RAND_0;
  reg  cmd0; // @[SpiSlaveReceiverLedDebugger.scala 26:23:@9.4]
  reg [31:0] _RAND_1;
  reg  cmd8; // @[SpiSlaveReceiverLedDebugger.scala 27:23:@10.4]
  reg [31:0] _RAND_2;
  reg  acmd41; // @[SpiSlaveReceiverLedDebugger.scala 28:25:@11.4]
  reg [31:0] _RAND_3;
  reg  cmd16; // @[SpiSlaveReceiverLedDebugger.scala 29:24:@12.4]
  reg [31:0] _RAND_4;
  reg  _T_36; // @[SpiSlaveReceiverLedDebugger.scala 8:44:@18.4]
  reg [31:0] _RAND_5;
  wire  _T_38; // @[SpiSlaveReceiverLedDebugger.scala 8:36:@20.4]
  wire  _T_39; // @[SpiSlaveReceiverLedDebugger.scala 8:33:@21.4]
  wire  _T_41; // @[SpiSlaveReceiverLedDebugger.scala 39:29:@24.8]
  wire  _GEN_0; // @[SpiSlaveReceiverLedDebugger.scala 39:39:@25.8]
  wire  _T_45; // @[Conditional.scala 37:30:@31.8]
  wire  _T_48; // @[Conditional.scala 37:30:@36.10]
  wire  _T_51; // @[Conditional.scala 37:30:@41.12]
  wire  _T_54; // @[Conditional.scala 37:30:@46.14]
  wire  _GEN_1; // @[Conditional.scala 39:67:@47.14]
  wire  _GEN_2; // @[Conditional.scala 39:67:@42.12]
  wire  _GEN_3; // @[Conditional.scala 39:67:@42.12]
  wire  _GEN_4; // @[Conditional.scala 39:67:@37.10]
  wire  _GEN_5; // @[Conditional.scala 39:67:@37.10]
  wire  _GEN_6; // @[Conditional.scala 39:67:@37.10]
  wire  _GEN_7; // @[Conditional.scala 40:58:@32.8]
  wire  _GEN_8; // @[Conditional.scala 40:58:@32.8]
  wire  _GEN_9; // @[Conditional.scala 40:58:@32.8]
  wire  _GEN_10; // @[Conditional.scala 40:58:@32.8]
  wire  _GEN_11; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  wire  _GEN_12; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  wire  _GEN_13; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  wire  _GEN_14; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  wire  _GEN_15; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  wire  _GEN_16; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  wire  _GEN_17; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  wire  _GEN_18; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  wire  _GEN_19; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  wire  _GEN_20; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  assign _T_38 = _T_36 == 1'h0; // @[SpiSlaveReceiverLedDebugger.scala 8:36:@20.4]
  assign _T_39 = io_ReadSuccess & _T_38; // @[SpiSlaveReceiverLedDebugger.scala 8:33:@21.4]
  assign _T_41 = io_Command == 6'h29; // @[SpiSlaveReceiverLedDebugger.scala 39:29:@24.8]
  assign _GEN_0 = _T_41 ? 1'h1 : acmd41; // @[SpiSlaveReceiverLedDebugger.scala 39:39:@25.8]
  assign _T_45 = 6'h0 == io_Command; // @[Conditional.scala 37:30:@31.8]
  assign _T_48 = 6'h8 == io_Command; // @[Conditional.scala 37:30:@36.10]
  assign _T_51 = 6'h37 == io_Command; // @[Conditional.scala 37:30:@41.12]
  assign _T_54 = 6'h10 == io_Command; // @[Conditional.scala 37:30:@46.14]
  assign _GEN_1 = _T_54 ? 1'h1 : cmd16; // @[Conditional.scala 39:67:@47.14]
  assign _GEN_2 = _T_51 ? 1'h1 : after_apcommand; // @[Conditional.scala 39:67:@42.12]
  assign _GEN_3 = _T_51 ? cmd16 : _GEN_1; // @[Conditional.scala 39:67:@42.12]
  assign _GEN_4 = _T_48 ? 1'h1 : cmd8; // @[Conditional.scala 39:67:@37.10]
  assign _GEN_5 = _T_48 ? after_apcommand : _GEN_2; // @[Conditional.scala 39:67:@37.10]
  assign _GEN_6 = _T_48 ? cmd16 : _GEN_3; // @[Conditional.scala 39:67:@37.10]
  assign _GEN_7 = _T_45 ? 1'h1 : cmd0; // @[Conditional.scala 40:58:@32.8]
  assign _GEN_8 = _T_45 ? cmd8 : _GEN_4; // @[Conditional.scala 40:58:@32.8]
  assign _GEN_9 = _T_45 ? after_apcommand : _GEN_5; // @[Conditional.scala 40:58:@32.8]
  assign _GEN_10 = _T_45 ? cmd16 : _GEN_6; // @[Conditional.scala 40:58:@32.8]
  assign _GEN_11 = after_apcommand ? _GEN_0 : acmd41; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  assign _GEN_12 = after_apcommand ? 1'h0 : _GEN_9; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  assign _GEN_13 = after_apcommand ? cmd0 : _GEN_7; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  assign _GEN_14 = after_apcommand ? cmd8 : _GEN_8; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  assign _GEN_15 = after_apcommand ? cmd16 : _GEN_10; // @[SpiSlaveReceiverLedDebugger.scala 38:31:@23.6]
  assign _GEN_16 = _T_39 ? _GEN_11 : acmd41; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  assign _GEN_17 = _T_39 ? _GEN_12 : after_apcommand; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  assign _GEN_18 = _T_39 ? _GEN_13 : cmd0; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  assign _GEN_19 = _T_39 ? _GEN_14 : cmd8; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  assign _GEN_20 = _T_39 ? _GEN_15 : cmd16; // @[SpiSlaveReceiverLedDebugger.scala 37:38:@22.4]
  assign io_CMD0 = cmd0; // @[SpiSlaveReceiverLedDebugger.scala 31:13:@13.4]
  assign io_CMD8 = cmd8; // @[SpiSlaveReceiverLedDebugger.scala 32:13:@14.4]
  assign io_ACMD41 = acmd41; // @[SpiSlaveReceiverLedDebugger.scala 33:15:@15.4]
  assign io_CMD16 = cmd16; // @[SpiSlaveReceiverLedDebugger.scala 34:14:@16.4]
  assign io_CMD55 = after_apcommand; // @[SpiSlaveReceiverLedDebugger.scala 35:14:@17.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  after_apcommand = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  cmd0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  cmd8 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  acmd41 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  cmd16 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_36 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      after_apcommand <= 1'h0;
    end else begin
      if (_T_39) begin
        if (after_apcommand) begin
          after_apcommand <= 1'h0;
        end else begin
          if (!(_T_45)) begin
            if (!(_T_48)) begin
              if (_T_51) begin
                after_apcommand <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      cmd0 <= 1'h0;
    end else begin
      if (_T_39) begin
        if (!(after_apcommand)) begin
          if (_T_45) begin
            cmd0 <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      cmd8 <= 1'h0;
    end else begin
      if (_T_39) begin
        if (!(after_apcommand)) begin
          if (!(_T_45)) begin
            if (_T_48) begin
              cmd8 <= 1'h1;
            end
          end
        end
      end
    end
    if (reset) begin
      acmd41 <= 1'h0;
    end else begin
      if (_T_39) begin
        if (after_apcommand) begin
          if (_T_41) begin
            acmd41 <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      cmd16 <= 1'h0;
    end else begin
      if (_T_39) begin
        if (!(after_apcommand)) begin
          if (!(_T_45)) begin
            if (!(_T_48)) begin
              if (!(_T_51)) begin
                if (_T_54) begin
                  cmd16 <= 1'h1;
                end
              end
            end
          end
        end
      end
    end
    _T_36 <= io_ReadSuccess;
  end
endmodule
