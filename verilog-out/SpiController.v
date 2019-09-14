module SpiController( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [5:0]  io_SlaveCommand, // @[:@6.4]
  input  [31:0] io_SlaveCommandArgument, // @[:@6.4]
  input         io_SlaveCommandReadFinished, // @[:@6.4]
  input         io_SlaveArgumentReadFinished, // @[:@6.4]
  input         io_SlaveReadSuccess, // @[:@6.4]
  output [31:0] io_DataBlockSize // @[:@6.4]
);
  reg [31:0] dataBlockSize; // @[SpiController.scala 19:32:@8.4]
  reg [31:0] _RAND_0;
  reg  _T_20; // @[SpiController.scala 8:27:@10.4]
  reg [31:0] _RAND_1;
  wire  _T_21; // @[SpiController.scala 9:11:@12.4]
  reg  _T_23; // @[SpiController.scala 9:30:@13.4]
  reg [31:0] _RAND_2;
  wire  _T_25; // @[SpiController.scala 9:22:@15.4]
  wire  _T_26; // @[SpiController.scala 9:19:@16.4]
  wire  _T_28; // @[Conditional.scala 37:30:@18.6]
  wire [31:0] _GEN_0; // @[Conditional.scala 40:58:@19.6]
  wire [31:0] _GEN_1; // @[SpiController.scala 23:52:@17.4]
  assign _T_21 = io_SlaveArgumentReadFinished & _T_20; // @[SpiController.scala 9:11:@12.4]
  assign _T_25 = _T_23 == 1'h0; // @[SpiController.scala 9:22:@15.4]
  assign _T_26 = _T_21 & _T_25; // @[SpiController.scala 9:19:@16.4]
  assign _T_28 = 6'h10 == io_SlaveCommand; // @[Conditional.scala 37:30:@18.6]
  assign _GEN_0 = _T_28 ? io_SlaveCommandArgument : dataBlockSize; // @[Conditional.scala 40:58:@19.6]
  assign _GEN_1 = _T_26 ? _GEN_0 : dataBlockSize; // @[SpiController.scala 23:52:@17.4]
  assign io_DataBlockSize = dataBlockSize; // @[SpiController.scala 21:22:@9.4]
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
  dataBlockSize = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_20 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_23 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      dataBlockSize <= 32'h0;
    end else begin
      if (_T_26) begin
        if (_T_28) begin
          dataBlockSize <= io_SlaveCommandArgument;
        end
      end
    end
    _T_20 <= io_SlaveArgumentReadFinished;
    _T_23 <= _T_20;
  end
endmodule
