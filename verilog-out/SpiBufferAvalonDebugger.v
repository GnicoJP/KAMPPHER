module SpiBufferAvalonDebugger( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_Avalon_address, // @[:@6.4]
  input         io_Avalon_read, // @[:@6.4]
  output [63:0] io_Avalon_readdata, // @[:@6.4]
  input         io_Avalon_write, // @[:@6.4]
  input  [63:0] io_Avalon_writedata, // @[:@6.4]
  output        io_Avalon_waitrequest, // @[:@6.4]
  input  [7:0]  io_InputBuffer, // @[:@6.4]
  input         io_BufferChanged // @[:@6.4]
);
  reg [7:0] Buffer_0; // @[SpiBufferAvalonDebugger.scala 15:21:@8.4]
  reg [31:0] _RAND_0;
  reg [7:0] Buffer_1; // @[SpiBufferAvalonDebugger.scala 15:21:@8.4]
  reg [31:0] _RAND_1;
  reg [55:0] Index_0; // @[SpiBufferAvalonDebugger.scala 16:24:@12.4]
  reg [63:0] _RAND_2;
  reg [55:0] Index_1; // @[SpiBufferAvalonDebugger.scala 16:24:@12.4]
  reg [63:0] _RAND_3;
  reg  Flip; // @[SpiBufferAvalonDebugger.scala 17:23:@13.4]
  reg [31:0] _RAND_4;
  wire  _T_64; // @[SpiBufferAvalonDebugger.scala 21:37:@15.4]
  wire [7:0] out_0; // @[SpiBufferAvalonDebugger.scala 21:18:@16.4]
  wire [55:0] out_1; // @[SpiBufferAvalonDebugger.scala 22:18:@19.4]
  reg  _T_72; // @[SpiBufferAvalonDebugger.scala 8:44:@24.4]
  reg [31:0] _RAND_5;
  wire  _T_74; // @[SpiBufferAvalonDebugger.scala 8:36:@26.4]
  wire  _T_75; // @[SpiBufferAvalonDebugger.scala 8:33:@27.4]
  wire [56:0] _T_77; // @[SpiBufferAvalonDebugger.scala 29:34:@31.8]
  wire [55:0] _T_78; // @[SpiBufferAvalonDebugger.scala 29:34:@32.8]
  wire [56:0] _T_80; // @[SpiBufferAvalonDebugger.scala 32:34:@37.8]
  wire [55:0] _T_81; // @[SpiBufferAvalonDebugger.scala 32:34:@38.8]
  wire [7:0] _GEN_0; // @[SpiBufferAvalonDebugger.scala 27:20:@29.6]
  wire [55:0] _GEN_1; // @[SpiBufferAvalonDebugger.scala 27:20:@29.6]
  wire [7:0] _GEN_2; // @[SpiBufferAvalonDebugger.scala 27:20:@29.6]
  wire [55:0] _GEN_3; // @[SpiBufferAvalonDebugger.scala 27:20:@29.6]
  wire  _T_82; // @[SpiBufferAvalonDebugger.scala 34:17:@41.6]
  wire [55:0] _GEN_5; // @[SpiBufferAvalonDebugger.scala 26:40:@28.4]
  wire [55:0] _GEN_7; // @[SpiBufferAvalonDebugger.scala 26:40:@28.4]
  wire  _GEN_8; // @[SpiBufferAvalonDebugger.scala 26:40:@28.4]
  assign _T_64 = io_Avalon_address == 1'h0; // @[SpiBufferAvalonDebugger.scala 21:37:@15.4]
  assign out_0 = _T_64 ? Buffer_0 : Buffer_1; // @[SpiBufferAvalonDebugger.scala 21:18:@16.4]
  assign out_1 = _T_64 ? Index_0 : Index_1; // @[SpiBufferAvalonDebugger.scala 22:18:@19.4]
  assign _T_74 = _T_72 == 1'h0; // @[SpiBufferAvalonDebugger.scala 8:36:@26.4]
  assign _T_75 = io_BufferChanged & _T_74; // @[SpiBufferAvalonDebugger.scala 8:33:@27.4]
  assign _T_77 = Index_1 + 56'h1; // @[SpiBufferAvalonDebugger.scala 29:34:@31.8]
  assign _T_78 = Index_1 + 56'h1; // @[SpiBufferAvalonDebugger.scala 29:34:@32.8]
  assign _T_80 = Index_0 + 56'h1; // @[SpiBufferAvalonDebugger.scala 32:34:@37.8]
  assign _T_81 = Index_0 + 56'h1; // @[SpiBufferAvalonDebugger.scala 32:34:@38.8]
  assign _GEN_0 = Flip ? io_InputBuffer : Buffer_0; // @[SpiBufferAvalonDebugger.scala 27:20:@29.6]
  assign _GEN_1 = Flip ? _T_78 : Index_0; // @[SpiBufferAvalonDebugger.scala 27:20:@29.6]
  assign _GEN_2 = Flip ? Buffer_1 : io_InputBuffer; // @[SpiBufferAvalonDebugger.scala 27:20:@29.6]
  assign _GEN_3 = Flip ? Index_1 : _T_81; // @[SpiBufferAvalonDebugger.scala 27:20:@29.6]
  assign _T_82 = ~ Flip; // @[SpiBufferAvalonDebugger.scala 34:17:@41.6]
  assign _GEN_5 = _T_75 ? _GEN_1 : Index_0; // @[SpiBufferAvalonDebugger.scala 26:40:@28.4]
  assign _GEN_7 = _T_75 ? _GEN_3 : Index_1; // @[SpiBufferAvalonDebugger.scala 26:40:@28.4]
  assign _GEN_8 = _T_75 ? _T_82 : Flip; // @[SpiBufferAvalonDebugger.scala 26:40:@28.4]
  assign io_Avalon_readdata = {out_1,out_0}; // @[SpiBufferAvalonDebugger.scala 23:24:@22.4]
  assign io_Avalon_waitrequest = 1'h0; // @[SpiBufferAvalonDebugger.scala 24:27:@23.4]
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
  Buffer_0 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  Buffer_1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  Index_0 = _RAND_2[55:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  Index_1 = _RAND_3[55:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  Flip = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_72 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_75) begin
      if (Flip) begin
        Buffer_0 <= io_InputBuffer;
      end
    end
    if (_T_75) begin
      if (!(Flip)) begin
        Buffer_1 <= io_InputBuffer;
      end
    end
    if (reset) begin
      Index_0 <= 56'hffffffffffffff;
    end else begin
      if (_T_75) begin
        if (Flip) begin
          Index_0 <= _T_78;
        end
      end
    end
    if (reset) begin
      Index_1 <= 56'hffffffffffffff;
    end else begin
      if (_T_75) begin
        if (!(Flip)) begin
          Index_1 <= _T_81;
        end
      end
    end
    if (reset) begin
      Flip <= 1'h1;
    end else begin
      if (_T_75) begin
        Flip <= _T_82;
      end
    end
    _T_72 <= io_BufferChanged;
  end
endmodule
