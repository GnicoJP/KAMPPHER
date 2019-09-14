module SpiBufferAvalonDebugger( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [6:0]  io_Avalon_address, // @[:@6.4]
  input         io_Avalon_read, // @[:@6.4]
  output [63:0] io_Avalon_readdata, // @[:@6.4]
  input         io_Avalon_write, // @[:@6.4]
  input  [63:0] io_Avalon_writedata, // @[:@6.4]
  output        io_Avalon_waitrequest, // @[:@6.4]
  input  [7:0]  io_InputBuffer, // @[:@6.4]
  input         io_BufferChanged // @[:@6.4]
);
  reg [7:0] mem [0:127]; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  reg [31:0] _RAND_0;
  wire [7:0] mem__T_34_data; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire [6:0] mem__T_34_addr; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire [7:0] mem__T_45_data; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire [6:0] mem__T_45_addr; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire  mem__T_45_mask; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire  mem__T_45_en; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire [7:0] mem__T_52_data; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire [6:0] mem__T_52_addr; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire  mem__T_52_mask; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  wire  mem__T_52_en; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  reg [6:0] Flip; // @[SpiBufferAvalonDebugger.scala 16:23:@9.4]
  reg [31:0] _RAND_1;
  reg  waitRequest; // @[SpiBufferAvalonDebugger.scala 18:30:@11.4]
  reg [31:0] _RAND_2;
  wire  _GEN_1; // @[SpiBufferAvalonDebugger.scala 20:57:@14.4]
  wire [7:0] _T_35; // @[SpiBufferAvalonDebugger.scala 20:30:@20.4]
  wire [7:0] _T_38; // @[SpiBufferAvalonDebugger.scala 25:20:@24.4]
  wire [6:0] _T_39; // @[SpiBufferAvalonDebugger.scala 25:20:@25.4]
  wire  _T_41; // @[SpiBufferAvalonDebugger.scala 26:28:@27.4]
  wire [6:0] FlipNext; // @[SpiBufferAvalonDebugger.scala 26:20:@28.4]
  reg  _T_48; // @[SpiBufferAvalonDebugger.scala 8:44:@37.6]
  reg [31:0] _RAND_3;
  wire  _T_50; // @[SpiBufferAvalonDebugger.scala 8:36:@39.6]
  wire  _T_51; // @[SpiBufferAvalonDebugger.scala 8:33:@40.6]
  wire  _GEN_9; // @[SpiBufferAvalonDebugger.scala 33:44:@41.6]
  wire [6:0] _GEN_15; // @[SpiBufferAvalonDebugger.scala 28:23:@30.4]
  wire  _GEN_16; // @[SpiBufferAvalonDebugger.scala 28:23:@30.4]
  reg [6:0] mem__T_34_addr_pipe_0;
  reg [31:0] _RAND_4;
  assign mem__T_34_addr = mem__T_34_addr_pipe_0;
  assign mem__T_34_data = mem[mem__T_34_addr]; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
  assign mem__T_45_data = {{1'd0}, FlipNext};
  assign mem__T_45_addr = 7'h0;
  assign mem__T_45_mask = 1'h1;
  assign mem__T_45_en = waitRequest;
  assign mem__T_52_data = io_InputBuffer;
  assign mem__T_52_addr = Flip;
  assign mem__T_52_mask = 1'h1;
  assign mem__T_52_en = waitRequest ? 1'h0 : _T_51;
  assign _GEN_1 = io_Avalon_read; // @[SpiBufferAvalonDebugger.scala 20:57:@14.4]
  assign _T_35 = waitRequest ? 8'h0 : mem__T_34_data; // @[SpiBufferAvalonDebugger.scala 20:30:@20.4]
  assign _T_38 = Flip + 7'h1; // @[SpiBufferAvalonDebugger.scala 25:20:@24.4]
  assign _T_39 = Flip + 7'h1; // @[SpiBufferAvalonDebugger.scala 25:20:@25.4]
  assign _T_41 = _T_39 == 7'h0; // @[SpiBufferAvalonDebugger.scala 26:28:@27.4]
  assign FlipNext = _T_41 ? 7'h1 : _T_39; // @[SpiBufferAvalonDebugger.scala 26:20:@28.4]
  assign _T_50 = _T_48 == 1'h0; // @[SpiBufferAvalonDebugger.scala 8:36:@39.6]
  assign _T_51 = io_BufferChanged & _T_50; // @[SpiBufferAvalonDebugger.scala 8:33:@40.6]
  assign _GEN_9 = _T_51 ? 1'h1 : waitRequest; // @[SpiBufferAvalonDebugger.scala 33:44:@41.6]
  assign _GEN_15 = waitRequest ? FlipNext : Flip; // @[SpiBufferAvalonDebugger.scala 28:23:@30.4]
  assign _GEN_16 = waitRequest ? 1'h0 : _GEN_9; // @[SpiBufferAvalonDebugger.scala 28:23:@30.4]
  assign io_Avalon_readdata = {{56'd0}, _T_35}; // @[SpiBufferAvalonDebugger.scala 20:24:@21.4]
  assign io_Avalon_waitrequest = waitRequest; // @[SpiBufferAvalonDebugger.scala 21:27:@22.4]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    mem[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  Flip = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  waitRequest = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_48 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  mem__T_34_addr_pipe_0 = _RAND_4[6:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_45_en & mem__T_45_mask) begin
      mem[mem__T_45_addr] <= mem__T_45_data; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
    end
    if(mem__T_52_en & mem__T_52_mask) begin
      mem[mem__T_52_addr] <= mem__T_52_data; // @[SpiBufferAvalonDebugger.scala 15:26:@8.4]
    end
    if (reset) begin
      Flip <= 7'h0;
    end else begin
      if (waitRequest) begin
        if (_T_41) begin
          Flip <= 7'h1;
        end else begin
          Flip <= _T_39;
        end
      end
    end
    if (reset) begin
      waitRequest <= 1'h1;
    end else begin
      if (waitRequest) begin
        waitRequest <= 1'h0;
      end else begin
        if (_T_51) begin
          waitRequest <= 1'h1;
        end
      end
    end
    _T_48 <= io_BufferChanged;
    if (_GEN_1) begin
      mem__T_34_addr_pipe_0 <= io_Avalon_address;
    end
  end
endmodule
