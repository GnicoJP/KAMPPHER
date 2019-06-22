module SpiReceiverLedDebugger( // @[:@3.2]
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
  output        io_CMD16 // @[:@6.4]
);
  reg  after_apcommand; // @[SpiReceiverLedDebugger.scala 21:34:@8.4]
  reg [31:0] _RAND_0;
  reg  cmd0; // @[SpiReceiverLedDebugger.scala 23:23:@9.4]
  reg [31:0] _RAND_1;
  reg  cmd8; // @[SpiReceiverLedDebugger.scala 24:23:@10.4]
  reg [31:0] _RAND_2;
  reg  acmd41; // @[SpiReceiverLedDebugger.scala 25:25:@11.4]
  reg [31:0] _RAND_3;
  reg  cmd16; // @[SpiReceiverLedDebugger.scala 26:24:@12.4]
  reg [31:0] _RAND_4;
  wire  _T_36; // @[SpiReceiverLedDebugger.scala 35:29:@20.8]
  wire  _GEN_0; // @[SpiReceiverLedDebugger.scala 35:39:@21.8]
  wire  _T_40; // @[Conditional.scala 37:30:@27.8]
  wire  _T_43; // @[Conditional.scala 37:30:@32.10]
  wire  _T_46; // @[Conditional.scala 37:30:@37.12]
  wire  _T_49; // @[Conditional.scala 37:30:@42.14]
  wire  _GEN_1; // @[Conditional.scala 39:67:@43.14]
  wire  _GEN_2; // @[Conditional.scala 39:67:@38.12]
  wire  _GEN_3; // @[Conditional.scala 39:67:@38.12]
  wire  _GEN_4; // @[Conditional.scala 39:67:@33.10]
  wire  _GEN_5; // @[Conditional.scala 39:67:@33.10]
  wire  _GEN_6; // @[Conditional.scala 39:67:@33.10]
  wire  _GEN_7; // @[Conditional.scala 40:58:@28.8]
  wire  _GEN_8; // @[Conditional.scala 40:58:@28.8]
  wire  _GEN_9; // @[Conditional.scala 40:58:@28.8]
  wire  _GEN_10; // @[Conditional.scala 40:58:@28.8]
  wire  _GEN_11; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  wire  _GEN_12; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  wire  _GEN_13; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  wire  _GEN_14; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  wire  _GEN_15; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  wire  _GEN_16; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  wire  _GEN_17; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  wire  _GEN_18; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  wire  _GEN_19; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  wire  _GEN_20; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  assign _T_36 = io_Command == 6'h29; // @[SpiReceiverLedDebugger.scala 35:29:@20.8]
  assign _GEN_0 = _T_36 ? 1'h1 : acmd41; // @[SpiReceiverLedDebugger.scala 35:39:@21.8]
  assign _T_40 = 6'h0 == io_Command; // @[Conditional.scala 37:30:@27.8]
  assign _T_43 = 6'h8 == io_Command; // @[Conditional.scala 37:30:@32.10]
  assign _T_46 = 6'h37 == io_Command; // @[Conditional.scala 37:30:@37.12]
  assign _T_49 = 6'h10 == io_Command; // @[Conditional.scala 37:30:@42.14]
  assign _GEN_1 = _T_49 ? 1'h1 : cmd16; // @[Conditional.scala 39:67:@43.14]
  assign _GEN_2 = _T_46 ? 1'h1 : after_apcommand; // @[Conditional.scala 39:67:@38.12]
  assign _GEN_3 = _T_46 ? cmd16 : _GEN_1; // @[Conditional.scala 39:67:@38.12]
  assign _GEN_4 = _T_43 ? 1'h1 : cmd8; // @[Conditional.scala 39:67:@33.10]
  assign _GEN_5 = _T_43 ? after_apcommand : _GEN_2; // @[Conditional.scala 39:67:@33.10]
  assign _GEN_6 = _T_43 ? cmd16 : _GEN_3; // @[Conditional.scala 39:67:@33.10]
  assign _GEN_7 = _T_40 ? 1'h1 : cmd0; // @[Conditional.scala 40:58:@28.8]
  assign _GEN_8 = _T_40 ? cmd8 : _GEN_4; // @[Conditional.scala 40:58:@28.8]
  assign _GEN_9 = _T_40 ? after_apcommand : _GEN_5; // @[Conditional.scala 40:58:@28.8]
  assign _GEN_10 = _T_40 ? cmd16 : _GEN_6; // @[Conditional.scala 40:58:@28.8]
  assign _GEN_11 = after_apcommand ? _GEN_0 : acmd41; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  assign _GEN_12 = after_apcommand ? 1'h0 : _GEN_9; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  assign _GEN_13 = after_apcommand ? cmd0 : _GEN_7; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  assign _GEN_14 = after_apcommand ? cmd8 : _GEN_8; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  assign _GEN_15 = after_apcommand ? cmd16 : _GEN_10; // @[SpiReceiverLedDebugger.scala 34:31:@19.6]
  assign _GEN_16 = io_ReadSuccess ? _GEN_11 : acmd41; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  assign _GEN_17 = io_ReadSuccess ? _GEN_12 : after_apcommand; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  assign _GEN_18 = io_ReadSuccess ? _GEN_13 : cmd0; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  assign _GEN_19 = io_ReadSuccess ? _GEN_14 : cmd8; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  assign _GEN_20 = io_ReadSuccess ? _GEN_15 : cmd16; // @[SpiReceiverLedDebugger.scala 33:37:@18.4]
  assign io_CMD0 = cmd0; // @[SpiReceiverLedDebugger.scala 28:13:@13.4]
  assign io_CMD8 = cmd8; // @[SpiReceiverLedDebugger.scala 29:13:@14.4]
  assign io_ACMD41 = acmd41; // @[SpiReceiverLedDebugger.scala 30:15:@15.4]
  assign io_CMD16 = cmd16; // @[SpiReceiverLedDebugger.scala 31:14:@16.4]
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
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      after_apcommand <= 1'h0;
    end else begin
      if (io_ReadSuccess) begin
        if (after_apcommand) begin
          after_apcommand <= 1'h0;
        end else begin
          if (!(_T_40)) begin
            if (!(_T_43)) begin
              if (_T_46) begin
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
      if (io_ReadSuccess) begin
        if (!(after_apcommand)) begin
          if (_T_40) begin
            cmd0 <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      cmd8 <= 1'h0;
    end else begin
      if (io_ReadSuccess) begin
        if (!(after_apcommand)) begin
          if (!(_T_40)) begin
            if (_T_43) begin
              cmd8 <= 1'h1;
            end
          end
        end
      end
    end
    if (reset) begin
      acmd41 <= 1'h0;
    end else begin
      if (io_ReadSuccess) begin
        if (after_apcommand) begin
          if (_T_36) begin
            acmd41 <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      cmd16 <= 1'h0;
    end else begin
      if (io_ReadSuccess) begin
        if (!(after_apcommand)) begin
          if (!(_T_40)) begin
            if (!(_T_43)) begin
              if (!(_T_46)) begin
                if (_T_49) begin
                  cmd16 <= 1'h1;
                end
              end
            end
          end
        end
      end
    end
  end
endmodule
