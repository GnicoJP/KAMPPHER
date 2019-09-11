module SpiSlaveReceiverLedDebugger2( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_CommandReadFinished, // @[:@6.4]
  input         io_ArgumentReadFinished, // @[:@6.4]
  input         io_ReadSuccess, // @[:@6.4]
  input  [5:0]  io_Command, // @[:@6.4]
  input  [31:0] io_CommandArgument, // @[:@6.4]
  output [5:0]  io_CMDCount // @[:@6.4]
);
  reg [5:0] count; // @[SpiSlaveReceiverLedDebugger2.scala 19:24:@8.4]
  reg [31:0] _RAND_0;
  reg  _T_20; // @[SpiSlaveReceiverLedDebugger2.scala 8:44:@10.4]
  reg [31:0] _RAND_1;
  wire  _T_22; // @[SpiSlaveReceiverLedDebugger2.scala 8:36:@12.4]
  wire  _T_23; // @[SpiSlaveReceiverLedDebugger2.scala 8:33:@13.4]
  wire [6:0] _T_25; // @[SpiSlaveReceiverLedDebugger2.scala 22:24:@15.6]
  wire [5:0] _T_26; // @[SpiSlaveReceiverLedDebugger2.scala 22:24:@16.6]
  wire [5:0] _GEN_0; // @[SpiSlaveReceiverLedDebugger2.scala 21:38:@14.4]
  assign _T_22 = _T_20 == 1'h0; // @[SpiSlaveReceiverLedDebugger2.scala 8:36:@12.4]
  assign _T_23 = io_ReadSuccess & _T_22; // @[SpiSlaveReceiverLedDebugger2.scala 8:33:@13.4]
  assign _T_25 = count + 6'h1; // @[SpiSlaveReceiverLedDebugger2.scala 22:24:@15.6]
  assign _T_26 = count + 6'h1; // @[SpiSlaveReceiverLedDebugger2.scala 22:24:@16.6]
  assign _GEN_0 = _T_23 ? _T_26 : count; // @[SpiSlaveReceiverLedDebugger2.scala 21:38:@14.4]
  assign io_CMDCount = count; // @[SpiSlaveReceiverLedDebugger2.scala 20:17:@9.4]
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
  count = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_20 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      count <= 6'h0;
    end else begin
      if (_T_23) begin
        count <= _T_26;
      end
    end
    _T_20 <= io_ReadSuccess;
  end
endmodule
