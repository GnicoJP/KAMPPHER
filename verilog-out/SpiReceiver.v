module SpiReceiver( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_SPI_CLK, // @[:@6.4]
  input         io_SPI_CS, // @[:@6.4]
  input         io_SPI_DI, // @[:@6.4]
  output        io_SPI_DO, // @[:@6.4]
  input         io_DO, // @[:@6.4]
  output        io_DI, // @[:@6.4]
  output        io_CommandReadFinished, // @[:@6.4]
  output        io_ArgumentReadFinished, // @[:@6.4]
  output        io_Reading, // @[:@6.4]
  output        io_ReadSuccess, // @[:@6.4]
  output [5:0]  io_Command, // @[:@6.4]
  output [31:0] io_CommandArgument // @[:@6.4]
);
  reg  commandBuffer [0:5]; // @[SpiReceiver.scala 40:36:@16.4]
  reg [31:0] _RAND_0;
  wire  commandBuffer__T_92_data; // @[SpiReceiver.scala 40:36:@16.4]
  wire [2:0] commandBuffer__T_92_addr; // @[SpiReceiver.scala 40:36:@16.4]
  reg [31:0] _RAND_1;
  wire  commandBuffer__T_94_data; // @[SpiReceiver.scala 40:36:@16.4]
  wire [2:0] commandBuffer__T_94_addr; // @[SpiReceiver.scala 40:36:@16.4]
  reg [31:0] _RAND_2;
  wire  commandBuffer__T_96_data; // @[SpiReceiver.scala 40:36:@16.4]
  wire [2:0] commandBuffer__T_96_addr; // @[SpiReceiver.scala 40:36:@16.4]
  reg [31:0] _RAND_3;
  wire  commandBuffer__T_98_data; // @[SpiReceiver.scala 40:36:@16.4]
  wire [2:0] commandBuffer__T_98_addr; // @[SpiReceiver.scala 40:36:@16.4]
  reg [31:0] _RAND_4;
  wire  commandBuffer__T_100_data; // @[SpiReceiver.scala 40:36:@16.4]
  wire [2:0] commandBuffer__T_100_addr; // @[SpiReceiver.scala 40:36:@16.4]
  reg [31:0] _RAND_5;
  wire  commandBuffer__T_102_data; // @[SpiReceiver.scala 40:36:@16.4]
  wire [2:0] commandBuffer__T_102_addr; // @[SpiReceiver.scala 40:36:@16.4]
  reg [31:0] _RAND_6;
  wire  commandBuffer__T_197_data; // @[SpiReceiver.scala 40:36:@16.4]
  wire [2:0] commandBuffer__T_197_addr; // @[SpiReceiver.scala 40:36:@16.4]
  wire  commandBuffer__T_197_mask; // @[SpiReceiver.scala 40:36:@16.4]
  wire  commandBuffer__T_197_en; // @[SpiReceiver.scala 40:36:@16.4]
  reg [2:0] state; // @[SpiReceiver.scala 33:24:@10.4]
  reg [31:0] _RAND_7;
  reg [7:0] counter; // @[SpiReceiver.scala 34:26:@11.4]
  reg [31:0] _RAND_8;
  reg  readSuccess; // @[SpiReceiver.scala 36:30:@13.4]
  reg [31:0] _RAND_9;
  wire  commandVec_2; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@30.4]
  wire  commandVec_1; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@28.4]
  wire  commandVec_0; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@26.4]
  wire [2:0] _T_168; // @[SpiReceiver.scala 54:30:@102.4]
  wire  commandVec_5; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@36.4]
  wire  commandVec_4; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@34.4]
  wire  commandVec_3; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@32.4]
  wire [2:0] _T_170; // @[SpiReceiver.scala 54:30:@104.4]
  wire [5:0] _T_171; // @[SpiReceiver.scala 54:30:@105.4]
  wire  _T_177; // @[Conditional.scala 37:30:@113.4]
  wire  _T_179; // @[SpiReceiver.scala 60:32:@115.6]
  wire [2:0] _GEN_0; // @[SpiReceiver.scala 60:45:@116.6]
  wire  _GEN_1; // @[SpiReceiver.scala 60:45:@116.6]
  wire  _T_188; // @[Conditional.scala 37:30:@129.6]
  reg [2:0] _T_191; // @[SpiReceiver.scala 67:33:@132.8]
  reg [31:0] _RAND_10;
  wire  _T_195; // @[Conditional.scala 37:30:@140.8]
  wire  _T_199; // @[SpiReceiver.scala 72:30:@145.10]
  wire [8:0] _T_206; // @[SpiReceiver.scala 76:48:@155.12]
  reg [7:0] _T_209; // @[SpiReceiver.scala 76:39:@157.12]
  reg [31:0] _RAND_11;
  wire [2:0] _GEN_2; // @[SpiReceiver.scala 72:39:@146.10]
  wire [7:0] _GEN_3; // @[SpiReceiver.scala 72:39:@146.10]
  wire  _T_210; // @[Conditional.scala 37:30:@163.10]
  wire  _T_214; // @[SpiReceiver.scala 81:30:@168.12]
  reg [7:0] _T_224; // @[SpiReceiver.scala 85:39:@180.14]
  reg [31:0] _RAND_12;
  wire [2:0] _GEN_4; // @[SpiReceiver.scala 81:40:@169.12]
  wire [7:0] _GEN_5; // @[SpiReceiver.scala 81:40:@169.12]
  wire  _T_225; // @[Conditional.scala 37:30:@186.12]
  wire  _T_229; // @[SpiReceiver.scala 90:30:@191.14]
  reg [7:0] _T_239; // @[SpiReceiver.scala 94:39:@203.16]
  reg [31:0] _RAND_13;
  wire [2:0] _GEN_6; // @[SpiReceiver.scala 90:39:@192.14]
  wire [7:0] _GEN_7; // @[SpiReceiver.scala 90:39:@192.14]
  wire  _T_240; // @[Conditional.scala 37:30:@209.14]
  wire  _GEN_8; // @[SpiReceiver.scala 98:43:@212.16]
  wire  _GEN_9; // @[Conditional.scala 39:67:@210.14]
  wire [2:0] _GEN_10; // @[Conditional.scala 39:67:@210.14]
  wire  _GEN_14; // @[Conditional.scala 39:67:@187.12]
  wire [2:0] _GEN_16; // @[Conditional.scala 39:67:@187.12]
  wire [7:0] _GEN_17; // @[Conditional.scala 39:67:@187.12]
  wire  _GEN_18; // @[Conditional.scala 39:67:@187.12]
  wire [2:0] _GEN_24; // @[Conditional.scala 39:67:@164.10]
  wire [7:0] _GEN_25; // @[Conditional.scala 39:67:@164.10]
  wire  _GEN_31; // @[Conditional.scala 39:67:@164.10]
  wire [2:0] _GEN_37; // @[Conditional.scala 39:67:@141.8]
  wire [7:0] _GEN_38; // @[Conditional.scala 39:67:@141.8]
  wire  _GEN_49; // @[Conditional.scala 39:67:@141.8]
  wire [2:0] _GEN_50; // @[Conditional.scala 39:67:@130.6]
  wire [7:0] _GEN_51; // @[Conditional.scala 39:67:@130.6]
  wire  _GEN_54; // @[Conditional.scala 39:67:@130.6]
  wire  _GEN_67; // @[Conditional.scala 39:67:@130.6]
  wire [2:0] _GEN_68; // @[Conditional.scala 40:58:@114.4]
  wire  _GEN_69; // @[Conditional.scala 40:58:@114.4]
  wire [7:0] _GEN_70; // @[Conditional.scala 40:58:@114.4]
  reg [2:0] commandBuffer__T_92_addr_pipe_0;
  reg [31:0] _RAND_14;
  reg [2:0] commandBuffer__T_94_addr_pipe_0;
  reg [31:0] _RAND_15;
  reg [2:0] commandBuffer__T_96_addr_pipe_0;
  reg [31:0] _RAND_16;
  reg [2:0] commandBuffer__T_98_addr_pipe_0;
  reg [31:0] _RAND_17;
  reg [2:0] commandBuffer__T_100_addr_pipe_0;
  reg [31:0] _RAND_18;
  reg [2:0] commandBuffer__T_102_addr_pipe_0;
  reg [31:0] _RAND_19;
  assign commandBuffer__T_92_addr = commandBuffer__T_92_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_92_data = commandBuffer[commandBuffer__T_92_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `else
  assign commandBuffer__T_92_data = commandBuffer__T_92_addr >= 3'h6 ? _RAND_1[0:0] : commandBuffer[commandBuffer__T_92_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_94_addr = commandBuffer__T_94_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_94_data = commandBuffer[commandBuffer__T_94_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `else
  assign commandBuffer__T_94_data = commandBuffer__T_94_addr >= 3'h6 ? _RAND_2[0:0] : commandBuffer[commandBuffer__T_94_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_96_addr = commandBuffer__T_96_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_96_data = commandBuffer[commandBuffer__T_96_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `else
  assign commandBuffer__T_96_data = commandBuffer__T_96_addr >= 3'h6 ? _RAND_3[0:0] : commandBuffer[commandBuffer__T_96_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_98_addr = commandBuffer__T_98_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_98_data = commandBuffer[commandBuffer__T_98_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `else
  assign commandBuffer__T_98_data = commandBuffer__T_98_addr >= 3'h6 ? _RAND_4[0:0] : commandBuffer[commandBuffer__T_98_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_100_addr = commandBuffer__T_100_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_100_data = commandBuffer[commandBuffer__T_100_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `else
  assign commandBuffer__T_100_data = commandBuffer__T_100_addr >= 3'h6 ? _RAND_5[0:0] : commandBuffer[commandBuffer__T_100_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_102_addr = commandBuffer__T_102_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_102_data = commandBuffer[commandBuffer__T_102_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `else
  assign commandBuffer__T_102_data = commandBuffer__T_102_addr >= 3'h6 ? _RAND_6[0:0] : commandBuffer[commandBuffer__T_102_addr]; // @[SpiReceiver.scala 40:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_197_data = io_SPI_DI;
  assign commandBuffer__T_197_addr = counter[2:0];
  assign commandBuffer__T_197_mask = 1'h1;
  assign commandBuffer__T_197_en = _T_177 ? 1'h0 : _GEN_54;
  assign commandVec_2 = commandBuffer__T_96_data; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@30.4]
  assign commandVec_1 = commandBuffer__T_94_data; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@28.4]
  assign commandVec_0 = commandBuffer__T_92_data; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@26.4]
  assign _T_168 = {commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 54:30:@102.4]
  assign commandVec_5 = commandBuffer__T_102_data; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@36.4]
  assign commandVec_4 = commandBuffer__T_100_data; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@34.4]
  assign commandVec_3 = commandBuffer__T_98_data; // @[SpiReceiver.scala 38:26:@14.4 SpiReceiver.scala 49:23:@32.4]
  assign _T_170 = {commandVec_5,commandVec_4,commandVec_3}; // @[SpiReceiver.scala 54:30:@104.4]
  assign _T_171 = {commandVec_5,commandVec_4,commandVec_3,commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 54:30:@105.4]
  assign _T_177 = 3'h0 == state; // @[Conditional.scala 37:30:@113.4]
  assign _T_179 = io_SPI_DI == 1'h0; // @[SpiReceiver.scala 60:32:@115.6]
  assign _GEN_0 = _T_179 ? 3'h1 : state; // @[SpiReceiver.scala 60:45:@116.6]
  assign _GEN_1 = _T_179 ? 1'h0 : readSuccess; // @[SpiReceiver.scala 60:45:@116.6]
  assign _T_188 = 3'h1 == state; // @[Conditional.scala 37:30:@129.6]
  assign _T_195 = 3'h2 == state; // @[Conditional.scala 37:30:@140.8]
  assign _T_199 = counter == 8'h5; // @[SpiReceiver.scala 72:30:@145.10]
  assign _T_206 = counter + 8'h1; // @[SpiReceiver.scala 76:48:@155.12]
  assign _GEN_2 = _T_199 ? 3'h3 : state; // @[SpiReceiver.scala 72:39:@146.10]
  assign _GEN_3 = _T_199 ? 8'h0 : _T_209; // @[SpiReceiver.scala 72:39:@146.10]
  assign _T_210 = 3'h3 == state; // @[Conditional.scala 37:30:@163.10]
  assign _T_214 = counter == 8'h1f; // @[SpiReceiver.scala 81:30:@168.12]
  assign _GEN_4 = _T_214 ? 3'h4 : state; // @[SpiReceiver.scala 81:40:@169.12]
  assign _GEN_5 = _T_214 ? 8'h0 : _T_224; // @[SpiReceiver.scala 81:40:@169.12]
  assign _T_225 = 3'h4 == state; // @[Conditional.scala 37:30:@186.12]
  assign _T_229 = counter == 8'h6; // @[SpiReceiver.scala 90:30:@191.14]
  assign _GEN_6 = _T_229 ? 3'h5 : state; // @[SpiReceiver.scala 90:39:@192.14]
  assign _GEN_7 = _T_229 ? 8'h0 : _T_239; // @[SpiReceiver.scala 90:39:@192.14]
  assign _T_240 = 3'h5 == state; // @[Conditional.scala 37:30:@209.14]
  assign _GEN_8 = io_SPI_DI ? 1'h1 : readSuccess; // @[SpiReceiver.scala 98:43:@212.16]
  assign _GEN_9 = _T_240 ? _GEN_8 : readSuccess; // @[Conditional.scala 39:67:@210.14]
  assign _GEN_10 = _T_240 ? 3'h0 : state; // @[Conditional.scala 39:67:@210.14]
  assign _GEN_14 = 1'h1; // @[Conditional.scala 39:67:@187.12]
  assign _GEN_16 = _T_225 ? _GEN_6 : _GEN_10; // @[Conditional.scala 39:67:@187.12]
  assign _GEN_17 = _T_225 ? _GEN_7 : counter; // @[Conditional.scala 39:67:@187.12]
  assign _GEN_18 = _T_225 ? readSuccess : _GEN_9; // @[Conditional.scala 39:67:@187.12]
  assign _GEN_24 = _T_210 ? _GEN_4 : _GEN_16; // @[Conditional.scala 39:67:@164.10]
  assign _GEN_25 = _T_210 ? _GEN_5 : _GEN_17; // @[Conditional.scala 39:67:@164.10]
  assign _GEN_31 = _T_210 ? readSuccess : _GEN_18; // @[Conditional.scala 39:67:@164.10]
  assign _GEN_37 = _T_195 ? _GEN_2 : _GEN_24; // @[Conditional.scala 39:67:@141.8]
  assign _GEN_38 = _T_195 ? _GEN_3 : _GEN_25; // @[Conditional.scala 39:67:@141.8]
  assign _GEN_49 = _T_195 ? readSuccess : _GEN_31; // @[Conditional.scala 39:67:@141.8]
  assign _GEN_50 = _T_188 ? _T_191 : _GEN_37; // @[Conditional.scala 39:67:@130.6]
  assign _GEN_51 = _T_188 ? 8'h0 : _GEN_38; // @[Conditional.scala 39:67:@130.6]
  assign _GEN_54 = _T_188 ? 1'h0 : _T_195; // @[Conditional.scala 39:67:@130.6]
  assign _GEN_67 = _T_188 ? readSuccess : _GEN_49; // @[Conditional.scala 39:67:@130.6]
  assign _GEN_68 = _T_177 ? _GEN_0 : _GEN_50; // @[Conditional.scala 40:58:@114.4]
  assign _GEN_69 = _T_177 ? _GEN_1 : _GEN_67; // @[Conditional.scala 40:58:@114.4]
  assign _GEN_70 = _T_177 ? 8'h0 : _GEN_51; // @[Conditional.scala 40:58:@114.4]
  assign io_SPI_DO = io_DO; // @[SpiReceiver.scala 29:15:@9.4]
  assign io_DI = io_SPI_DI; // @[SpiReceiver.scala 28:11:@8.4]
  assign io_CommandReadFinished = state > 3'h2; // @[SpiReceiver.scala 44:28:@21.4]
  assign io_ArgumentReadFinished = state > 3'h3; // @[SpiReceiver.scala 45:29:@23.4]
  assign io_Reading = state > 3'h1; // @[SpiReceiver.scala 43:16:@19.4]
  assign io_ReadSuccess = readSuccess; // @[SpiReceiver.scala 46:20:@24.4]
  assign io_Command = {_T_170,_T_168}; // @[SpiReceiver.scala 54:16:@106.4]
  assign io_CommandArgument = {{26'd0}, _T_171}; // @[SpiReceiver.scala 55:24:@112.4]
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
  for (initvar = 0; initvar < 6; initvar = initvar+1)
    commandBuffer[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
  _RAND_3 = {1{`RANDOM}};
  _RAND_4 = {1{`RANDOM}};
  _RAND_5 = {1{`RANDOM}};
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  state = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  counter = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  readSuccess = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_191 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_209 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_224 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_239 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  commandBuffer__T_92_addr_pipe_0 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  commandBuffer__T_94_addr_pipe_0 = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  commandBuffer__T_96_addr_pipe_0 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  commandBuffer__T_98_addr_pipe_0 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  commandBuffer__T_100_addr_pipe_0 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  commandBuffer__T_102_addr_pipe_0 = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_SPI_CLK) begin
    if(commandBuffer__T_197_en & commandBuffer__T_197_mask) begin
      commandBuffer[commandBuffer__T_197_addr] <= commandBuffer__T_197_data; // @[SpiReceiver.scala 40:36:@16.4]
    end
    if (io_SPI_DI) begin
      _T_191 <= 3'h2;
    end else begin
      _T_191 <= 3'h0;
    end
    _T_209 <= counter + 8'h1;
    _T_224 <= counter + 8'h1;
    _T_239 <= counter + 8'h1;
  end
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_177) begin
        if (_T_179) begin
          state <= 3'h1;
        end
      end else begin
        if (_T_188) begin
          state <= _T_191;
        end else begin
          if (_T_195) begin
            if (_T_199) begin
              state <= 3'h3;
            end
          end else begin
            if (_T_210) begin
              if (_T_214) begin
                state <= 3'h4;
              end
            end else begin
              if (_T_225) begin
                if (_T_229) begin
                  state <= 3'h5;
                end
              end else begin
                if (_T_240) begin
                  state <= 3'h0;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      counter <= 8'h0;
    end else begin
      if (_T_177) begin
        counter <= 8'h0;
      end else begin
        if (_T_188) begin
          counter <= 8'h0;
        end else begin
          if (_T_195) begin
            if (_T_199) begin
              counter <= 8'h0;
            end else begin
              counter <= _T_209;
            end
          end else begin
            if (_T_210) begin
              if (_T_214) begin
                counter <= 8'h0;
              end else begin
                counter <= _T_224;
              end
            end else begin
              if (_T_225) begin
                if (_T_229) begin
                  counter <= 8'h0;
                end else begin
                  counter <= _T_239;
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
      if (_T_177) begin
        if (_T_179) begin
          readSuccess <= 1'h0;
        end
      end else begin
        if (!(_T_188)) begin
          if (!(_T_195)) begin
            if (!(_T_210)) begin
              if (!(_T_225)) begin
                if (_T_240) begin
                  if (io_SPI_DI) begin
                    readSuccess <= 1'h1;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_GEN_14) begin
      commandBuffer__T_92_addr_pipe_0 <= 3'h0;
    end
    if (_GEN_14) begin
      commandBuffer__T_94_addr_pipe_0 <= 3'h1;
    end
    if (_GEN_14) begin
      commandBuffer__T_96_addr_pipe_0 <= 3'h2;
    end
    if (_GEN_14) begin
      commandBuffer__T_98_addr_pipe_0 <= 3'h3;
    end
    if (_GEN_14) begin
      commandBuffer__T_100_addr_pipe_0 <= 3'h4;
    end
    if (_GEN_14) begin
      commandBuffer__T_102_addr_pipe_0 <= 3'h5;
    end
  end
endmodule
