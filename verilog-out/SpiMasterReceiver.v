module SpiMasterReceiver(
  input         clock,
  input         reset,
  input  [7:0]  io_InputBuffer,
  input         io_BufferChanged,
  input  [31:0] io_DataBlockSize,
  input         io_CommandReadFinished,
  input  [5:0]  io_Command,
  output [31:0] io_DataBlocksCount,
  output        io_IsDataReading,
  output [2:0]  io____state,
  output        io_IsBusy
);
  reg [2:0] state; // @[SpiMasterReceiver.scala 27:24]
  reg [31:0] _RAND_0;
  reg [31:0] counter; // @[SpiMasterReceiver.scala 30:26]
  reg [31:0] _RAND_1;
  reg  initialized; // @[SpiMasterReceiver.scala 33:30]
  reg [31:0] _RAND_2;
  reg  dataReading; // @[SpiMasterReceiver.scala 35:30]
  reg [31:0] _RAND_3;
  reg  _T_1; // @[SpiMasterReceiver.scala 8:27]
  reg [31:0] _RAND_4;
  wire  _T_2; // @[SpiMasterReceiver.scala 9:11]
  reg  _T_3; // @[SpiMasterReceiver.scala 9:30]
  reg [31:0] _RAND_5;
  wire  _T_4; // @[SpiMasterReceiver.scala 9:22]
  wire  _T_5; // @[SpiMasterReceiver.scala 9:19]
  wire  _T_6; // @[SpiMasterReceiver.scala 41:36]
  wire  _T_7; // @[Conditional.scala 37:30]
  wire  _T_8; // @[SpiMasterReceiver.scala 44:37]
  wire  _T_9; // @[Conditional.scala 37:30]
  wire  _T_10; // @[SpiMasterReceiver.scala 49:51]
  wire  _T_11; // @[SpiMasterReceiver.scala 49:55]
  wire  _T_12; // @[SpiMasterReceiver.scala 49:34]
  wire  _T_13; // @[SpiMasterReceiver.scala 50:37]
  wire  _T_14; // @[SpiMasterReceiver.scala 52:43]
  wire  _T_15; // @[SpiMasterReceiver.scala 52:65]
  wire  _T_16; // @[SpiMasterReceiver.scala 52:51]
  wire  _T_17; // @[SpiMasterReceiver.scala 54:43]
  wire  _T_18; // @[SpiMasterReceiver.scala 54:66]
  wire  _T_19; // @[SpiMasterReceiver.scala 54:52]
  wire  _T_20; // @[SpiMasterReceiver.scala 55:51]
  wire  _T_21; // @[SpiMasterReceiver.scala 55:37]
  wire  _T_22; // @[SpiMasterReceiver.scala 55:73]
  wire  _T_23; // @[SpiMasterReceiver.scala 55:59]
  wire  _T_24; // @[Conditional.scala 37:30]
  reg [5:0] _T_25; // @[SpiMasterReceiver.scala 13:22]
  reg [31:0] _RAND_6;
  wire  _T_26; // @[SpiMasterReceiver.scala 13:11]
  wire  _T_27; // @[SpiMasterReceiver.scala 67:34]
  wire [31:0] _T_29; // @[SpiMasterReceiver.scala 71:44]
  wire  _T_30; // @[Conditional.scala 37:30]
  wire  _T_31; // @[SpiMasterReceiver.scala 76:37]
  wire  _T_32; // @[SpiMasterReceiver.scala 78:43]
  wire [7:0] _T_33; // @[SpiMasterReceiver.scala 80:44]
  wire  _T_34; // @[SpiMasterReceiver.scala 80:54]
  wire  _T_35; // @[Conditional.scala 37:30]
  reg [5:0] _T_36; // @[SpiMasterReceiver.scala 13:22]
  reg [31:0] _RAND_7;
  wire  _T_37; // @[SpiMasterReceiver.scala 13:11]
  wire  _T_42; // @[SpiMasterReceiver.scala 91:67]
  wire [31:0] _T_43; // @[SpiMasterReceiver.scala 91:47]
  wire  _T_44; // @[SpiMasterReceiver.scala 91:40]
  wire  _T_47; // @[Conditional.scala 37:30]
  reg [5:0] _T_48; // @[SpiMasterReceiver.scala 13:22]
  reg [31:0] _RAND_8;
  wire  _T_49; // @[SpiMasterReceiver.scala 13:11]
  wire  _T_50; // @[SpiMasterReceiver.scala 106:34]
  wire  _GEN_18; // @[SpiMasterReceiver.scala 106:43]
  wire  _GEN_21; // @[SpiMasterReceiver.scala 100:50]
  assign _T_2 = io_BufferChanged & _T_1; // @[SpiMasterReceiver.scala 9:11]
  assign _T_4 = _T_3 == 1'h0; // @[SpiMasterReceiver.scala 9:22]
  assign _T_5 = _T_2 & _T_4; // @[SpiMasterReceiver.scala 9:19]
  assign _T_6 = initialized | io_CommandReadFinished; // @[SpiMasterReceiver.scala 41:36]
  assign _T_7 = 3'h0 == state; // @[Conditional.scala 37:30]
  assign _T_8 = io_InputBuffer == 8'hff; // @[SpiMasterReceiver.scala 44:37]
  assign _T_9 = 3'h1 == state; // @[Conditional.scala 37:30]
  assign _T_10 = io_InputBuffer[7]; // @[SpiMasterReceiver.scala 49:51]
  assign _T_11 = _T_10 == 1'h0; // @[SpiMasterReceiver.scala 49:55]
  assign _T_12 = initialized & _T_11; // @[SpiMasterReceiver.scala 49:34]
  assign _T_13 = io_Command == 6'hc; // @[SpiMasterReceiver.scala 50:37]
  assign _T_14 = io_Command == 6'h8; // @[SpiMasterReceiver.scala 52:43]
  assign _T_15 = io_Command == 6'h3a; // @[SpiMasterReceiver.scala 52:65]
  assign _T_16 = _T_14 | _T_15; // @[SpiMasterReceiver.scala 52:51]
  assign _T_17 = io_Command == 6'h11; // @[SpiMasterReceiver.scala 54:43]
  assign _T_18 = io_Command == 6'h12; // @[SpiMasterReceiver.scala 54:66]
  assign _T_19 = _T_17 | _T_18; // @[SpiMasterReceiver.scala 54:52]
  assign _T_20 = io_Command == 6'h9; // @[SpiMasterReceiver.scala 55:51]
  assign _T_21 = _T_19 | _T_20; // @[SpiMasterReceiver.scala 55:37]
  assign _T_22 = io_Command == 6'ha; // @[SpiMasterReceiver.scala 55:73]
  assign _T_23 = _T_21 | _T_22; // @[SpiMasterReceiver.scala 55:59]
  assign _T_24 = 3'h2 == state; // @[Conditional.scala 37:30]
  assign _T_26 = io_Command != _T_25; // @[SpiMasterReceiver.scala 13:11]
  assign _T_27 = counter == 32'h3; // @[SpiMasterReceiver.scala 67:34]
  assign _T_29 = counter + 32'h1; // @[SpiMasterReceiver.scala 71:44]
  assign _T_30 = 3'h3 == state; // @[Conditional.scala 37:30]
  assign _T_31 = io_InputBuffer == 8'hfe; // @[SpiMasterReceiver.scala 76:37]
  assign _T_32 = io_InputBuffer == 8'h0; // @[SpiMasterReceiver.scala 78:43]
  assign _T_33 = io_InputBuffer & 8'he0; // @[SpiMasterReceiver.scala 80:44]
  assign _T_34 = _T_33 == 8'h0; // @[SpiMasterReceiver.scala 80:54]
  assign _T_35 = 3'h4 == state; // @[Conditional.scala 37:30]
  assign _T_37 = io_Command != _T_36; // @[SpiMasterReceiver.scala 13:11]
  assign _T_42 = _T_20 | _T_22; // @[SpiMasterReceiver.scala 91:67]
  assign _T_43 = _T_42 ? 32'h10 : io_DataBlockSize; // @[SpiMasterReceiver.scala 91:47]
  assign _T_44 = _T_29 == _T_43; // @[SpiMasterReceiver.scala 91:40]
  assign _T_47 = 3'h5 == state; // @[Conditional.scala 37:30]
  assign _T_49 = io_Command != _T_48; // @[SpiMasterReceiver.scala 13:11]
  assign _T_50 = counter == 32'h0; // @[SpiMasterReceiver.scala 106:34]
  assign _GEN_18 = _T_50 & dataReading; // @[SpiMasterReceiver.scala 106:43]
  assign _GEN_21 = _T_49 ? 1'h0 : _T_50; // @[SpiMasterReceiver.scala 100:50]
  assign io_DataBlocksCount = counter; // @[SpiMasterReceiver.scala 31:24]
  assign io_IsDataReading = dataReading; // @[SpiMasterReceiver.scala 38:22]
  assign io____state = state; // @[SpiMasterReceiver.scala 28:17]
  assign io_IsBusy = state == 3'h0; // @[SpiMasterReceiver.scala 37:15]
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  counter = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  initialized = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  dataReading = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_3 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_25 = _RAND_6[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_36 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_48 = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h1;
    end else begin
      if (_T_5) begin
        if (_T_7) begin
          if (_T_8) begin
            state <= 3'h1;
          end
        end else begin
          if (_T_9) begin
            if (_T_12) begin
              if (_T_13) begin
                state <= 3'h0;
              end else begin
                if (_T_16) begin
                  state <= 3'h2;
                end else begin
                  if (_T_23) begin
                    state <= 3'h3;
                  end else begin
                    state <= 3'h1;
                  end
                end
              end
            end
          end else begin
            if (_T_24) begin
              if (_T_26) begin
                state <= 3'h1;
              end else begin
                if (_T_27) begin
                  state <= 3'h1;
                end else begin
                  state <= 3'h2;
                end
              end
            end else begin
              if (_T_30) begin
                if (_T_31) begin
                  state <= 3'h4;
                end else begin
                  if (_T_32) begin
                    state <= 3'h3;
                  end else begin
                    if (_T_34) begin
                      state <= 3'h1;
                    end
                  end
                end
              end else begin
                if (_T_35) begin
                  if (_T_37) begin
                    state <= 3'h1;
                  end else begin
                    if (_T_44) begin
                      state <= 3'h5;
                    end
                  end
                end else begin
                  if (_T_47) begin
                    if (_T_49) begin
                      state <= 3'h1;
                    end else begin
                      if (_T_50) begin
                        state <= 3'h5;
                      end else begin
                        state <= 3'h1;
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      counter <= 32'h0;
    end else begin
      if (_T_5) begin
        if (!(_T_7)) begin
          if (!(_T_9)) begin
            if (_T_24) begin
              if (!(_T_26)) begin
                if (_T_27) begin
                  counter <= 32'h0;
                end else begin
                  counter <= _T_29;
                end
              end
            end else begin
              if (!(_T_30)) begin
                if (_T_35) begin
                  if (_T_37) begin
                    counter <= 32'h0;
                  end else begin
                    if (_T_44) begin
                      counter <= 32'h0;
                    end else begin
                      counter <= _T_29;
                    end
                  end
                end else begin
                  if (_T_47) begin
                    counter <= {{31'd0}, _GEN_21};
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      initialized <= 1'h0;
    end else begin
      if (_T_5) begin
        initialized <= _T_6;
      end
    end
    if (reset) begin
      dataReading <= 1'h0;
    end else begin
      if (_T_5) begin
        if (!(_T_7)) begin
          if (!(_T_9)) begin
            if (!(_T_24)) begin
              if (!(_T_30)) begin
                if (_T_35) begin
                  if (_T_37) begin
                    dataReading <= 1'h0;
                  end else begin
                    dataReading <= 1'h1;
                  end
                end else begin
                  if (_T_47) begin
                    if (_T_49) begin
                      dataReading <= 1'h0;
                    end else begin
                      dataReading <= _GEN_18;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    _T_1 <= io_BufferChanged;
    _T_3 <= _T_1;
    _T_25 <= io_Command;
    _T_36 <= io_Command;
    _T_48 <= io_Command;
  end
endmodule
