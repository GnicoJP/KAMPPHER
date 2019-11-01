module SpiController(
  input         clock,
  input         reset,
  input  [5:0]  io_SlaveCommand,
  input  [31:0] io_SlaveCommandArgument,
  input         io_SlaveCommandReadFinished,
  input         io_SlaveArgumentReadFinished,
  input         io_SlaveReadSuccess,
  output [31:0] io_DataBlockSize
);
  reg [31:0] dataBlockSize; // @[SpiController.scala 19:32]
  reg [31:0] _RAND_0;
  reg  _T; // @[SpiController.scala 8:27]
  reg [31:0] _RAND_1;
  wire  _T_1; // @[SpiController.scala 9:11]
  reg  _T_2; // @[SpiController.scala 9:30]
  reg [31:0] _RAND_2;
  wire  _T_3; // @[SpiController.scala 9:22]
  wire  _T_4; // @[SpiController.scala 9:19]
  wire  _T_5; // @[Conditional.scala 37:30]
  assign _T_1 = io_SlaveArgumentReadFinished & _T; // @[SpiController.scala 9:11]
  assign _T_3 = _T_2 == 1'h0; // @[SpiController.scala 9:22]
  assign _T_4 = _T_1 & _T_3; // @[SpiController.scala 9:19]
  assign _T_5 = 6'h10 == io_SlaveCommand; // @[Conditional.scala 37:30]
  assign io_DataBlockSize = dataBlockSize; // @[SpiController.scala 21:22]
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
  dataBlockSize = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      dataBlockSize <= 32'h0;
    end else begin
      if (_T_4) begin
        if (_T_5) begin
          dataBlockSize <= io_SlaveCommandArgument;
        end
      end
    end
    _T <= io_SlaveArgumentReadFinished;
    _T_2 <= _T;
  end
endmodule
