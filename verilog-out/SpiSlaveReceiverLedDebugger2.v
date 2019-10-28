module SpiSlaveReceiverLedDebugger2(
  input         clock,
  input         reset,
  input         io_CommandReadFinished,
  input         io_ArgumentReadFinished,
  input         io_ReadSuccess,
  input  [5:0]  io_Command,
  input  [31:0] io_CommandArgument,
  output [5:0]  io_CMDCount
);
  reg [5:0] count; // @[SpiSlaveReceiverLedDebugger2.scala 19:24]
  reg [31:0] _RAND_0;
  reg  _T; // @[SpiSlaveReceiverLedDebugger2.scala 8:44]
  reg [31:0] _RAND_1;
  wire  _T_1; // @[SpiSlaveReceiverLedDebugger2.scala 8:36]
  wire  _T_2; // @[SpiSlaveReceiverLedDebugger2.scala 8:33]
  wire [5:0] _T_4; // @[SpiSlaveReceiverLedDebugger2.scala 22:24]
  assign _T_1 = _T == 1'h0; // @[SpiSlaveReceiverLedDebugger2.scala 8:36]
  assign _T_2 = io_ReadSuccess & _T_1; // @[SpiSlaveReceiverLedDebugger2.scala 8:33]
  assign _T_4 = count + 6'h1; // @[SpiSlaveReceiverLedDebugger2.scala 22:24]
  assign io_CMDCount = count; // @[SpiSlaveReceiverLedDebugger2.scala 20:17]
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
  count = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      count <= 6'h0;
    end else begin
      if (_T_2) begin
        count <= _T_4;
      end
    end
    _T <= io_ReadSuccess;
  end
endmodule
