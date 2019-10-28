module SpiSlaveReceiverLedDebugger(
  input         clock,
  input         reset,
  input         io_CommandReadFinished,
  input         io_ArgumentReadFinished,
  input         io_ReadSuccess,
  input  [5:0]  io_Command,
  input  [31:0] io_CommandArgument,
  output        io_CMD0,
  output        io_CMD8,
  output        io_ACMD41,
  output        io_CMD16,
  output        io_CMD55
);
  reg  after_apcommand; // @[SpiSlaveReceiverLedDebugger.scala 24:34]
  reg [31:0] _RAND_0;
  reg  cmd0; // @[SpiSlaveReceiverLedDebugger.scala 26:23]
  reg [31:0] _RAND_1;
  reg  cmd8; // @[SpiSlaveReceiverLedDebugger.scala 27:23]
  reg [31:0] _RAND_2;
  reg  acmd41; // @[SpiSlaveReceiverLedDebugger.scala 28:25]
  reg [31:0] _RAND_3;
  reg  cmd16; // @[SpiSlaveReceiverLedDebugger.scala 29:24]
  reg [31:0] _RAND_4;
  reg  _T; // @[SpiSlaveReceiverLedDebugger.scala 8:44]
  reg [31:0] _RAND_5;
  wire  _T_1; // @[SpiSlaveReceiverLedDebugger.scala 8:36]
  wire  _T_2; // @[SpiSlaveReceiverLedDebugger.scala 8:33]
  wire  _T_3; // @[SpiSlaveReceiverLedDebugger.scala 39:29]
  wire  _GEN_0; // @[SpiSlaveReceiverLedDebugger.scala 39:39]
  wire  _T_4; // @[Conditional.scala 37:30]
  wire  _T_5; // @[Conditional.scala 37:30]
  wire  _T_6; // @[Conditional.scala 37:30]
  wire  _T_7; // @[Conditional.scala 37:30]
  wire  _GEN_1; // @[Conditional.scala 39:67]
  wire  _GEN_2; // @[Conditional.scala 39:67]
  wire  _GEN_4; // @[Conditional.scala 39:67]
  wire  _GEN_7; // @[Conditional.scala 40:58]
  assign _T_1 = _T == 1'h0; // @[SpiSlaveReceiverLedDebugger.scala 8:36]
  assign _T_2 = io_ReadSuccess & _T_1; // @[SpiSlaveReceiverLedDebugger.scala 8:33]
  assign _T_3 = io_Command == 6'h29; // @[SpiSlaveReceiverLedDebugger.scala 39:29]
  assign _GEN_0 = _T_3 | acmd41; // @[SpiSlaveReceiverLedDebugger.scala 39:39]
  assign _T_4 = 6'h0 == io_Command; // @[Conditional.scala 37:30]
  assign _T_5 = 6'h8 == io_Command; // @[Conditional.scala 37:30]
  assign _T_6 = 6'h37 == io_Command; // @[Conditional.scala 37:30]
  assign _T_7 = 6'h10 == io_Command; // @[Conditional.scala 37:30]
  assign _GEN_1 = _T_7 | cmd16; // @[Conditional.scala 39:67]
  assign _GEN_2 = _T_6 | after_apcommand; // @[Conditional.scala 39:67]
  assign _GEN_4 = _T_5 | cmd8; // @[Conditional.scala 39:67]
  assign _GEN_7 = _T_4 | cmd0; // @[Conditional.scala 40:58]
  assign io_CMD0 = cmd0; // @[SpiSlaveReceiverLedDebugger.scala 31:13]
  assign io_CMD8 = cmd8; // @[SpiSlaveReceiverLedDebugger.scala 32:13]
  assign io_ACMD41 = acmd41; // @[SpiSlaveReceiverLedDebugger.scala 33:15]
  assign io_CMD16 = cmd16; // @[SpiSlaveReceiverLedDebugger.scala 34:14]
  assign io_CMD55 = after_apcommand; // @[SpiSlaveReceiverLedDebugger.scala 35:14]
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
  _T = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      after_apcommand <= 1'h0;
    end else begin
      if (_T_2) begin
        if (after_apcommand) begin
          after_apcommand <= 1'h0;
        end else begin
          if (!(_T_4)) begin
            if (!(_T_5)) begin
              after_apcommand <= _GEN_2;
            end
          end
        end
      end
    end
    if (reset) begin
      cmd0 <= 1'h0;
    end else begin
      if (_T_2) begin
        if (!(after_apcommand)) begin
          cmd0 <= _GEN_7;
        end
      end
    end
    if (reset) begin
      cmd8 <= 1'h0;
    end else begin
      if (_T_2) begin
        if (!(after_apcommand)) begin
          if (!(_T_4)) begin
            cmd8 <= _GEN_4;
          end
        end
      end
    end
    if (reset) begin
      acmd41 <= 1'h0;
    end else begin
      if (_T_2) begin
        if (after_apcommand) begin
          acmd41 <= _GEN_0;
        end
      end
    end
    if (reset) begin
      cmd16 <= 1'h0;
    end else begin
      if (_T_2) begin
        if (!(after_apcommand)) begin
          if (!(_T_4)) begin
            if (!(_T_5)) begin
              if (!(_T_6)) begin
                cmd16 <= _GEN_1;
              end
            end
          end
        end
      end
    end
    _T <= io_ReadSuccess;
  end
endmodule
