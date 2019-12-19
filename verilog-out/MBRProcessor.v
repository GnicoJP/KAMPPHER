module MBRProcessor(
  input         clock,
  input         reset,
  input         io_IsReading,
  input  [7:0]  io_Buffer,
  input  [31:0] io_MasterCommandArgument,
  input  [31:0] io_DataBlocksCount,
  output [31:0] io_Partition1Start,
  output [31:0] io_Partition2Start,
  output [31:0] io_Partition3Start,
  output [31:0] io_Partition4Start
);
  reg [31:0] prevDataBlocksCount; // @[MBRProcessor.scala 22:38]
  reg [31:0] _RAND_0;
  reg [1:0] late; // @[MBRProcessor.scala 24:23]
  reg [31:0] _RAND_1;
  reg [7:0] PartitionStart_0_0; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_2;
  reg [7:0] PartitionStart_0_1; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_3;
  reg [7:0] PartitionStart_0_2; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_4;
  reg [7:0] PartitionStart_0_3; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_5;
  reg [7:0] PartitionStart_1_0; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_6;
  reg [7:0] PartitionStart_1_1; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_7;
  reg [7:0] PartitionStart_1_2; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_8;
  reg [7:0] PartitionStart_1_3; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_9;
  reg [7:0] PartitionStart_2_0; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_10;
  reg [7:0] PartitionStart_2_1; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_11;
  reg [7:0] PartitionStart_2_2; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_12;
  reg [7:0] PartitionStart_2_3; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_13;
  reg [7:0] PartitionStart_3_0; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_14;
  reg [7:0] PartitionStart_3_1; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_15;
  reg [7:0] PartitionStart_3_2; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_16;
  reg [7:0] PartitionStart_3_3; // @[MBRProcessor.scala 26:33]
  reg [31:0] _RAND_17;
  wire [15:0] _T_5; // @[MBRProcessor.scala 28:45]
  wire [15:0] _T_6; // @[MBRProcessor.scala 28:45]
  wire [15:0] _T_8; // @[MBRProcessor.scala 29:45]
  wire [15:0] _T_9; // @[MBRProcessor.scala 29:45]
  wire [15:0] _T_11; // @[MBRProcessor.scala 30:45]
  wire [15:0] _T_12; // @[MBRProcessor.scala 30:45]
  wire [15:0] _T_14; // @[MBRProcessor.scala 31:45]
  wire [15:0] _T_15; // @[MBRProcessor.scala 31:45]
  reg [7:0] buf_; // @[MBRProcessor.scala 33:23]
  reg [31:0] _RAND_18;
  reg [31:0] mca; // @[MBRProcessor.scala 34:22]
  reg [31:0] _RAND_19;
  reg [31:0] dbc; // @[MBRProcessor.scala 35:22]
  reg [31:0] _RAND_20;
  wire [31:0] currentLogicalBlock; // @[MBRProcessor.scala 38:32]
  reg  _T_19; // @[MBRProcessor.scala 8:27]
  reg [31:0] _RAND_21;
  wire  _T_20; // @[MBRProcessor.scala 9:11]
  reg  _T_21; // @[MBRProcessor.scala 9:30]
  reg [31:0] _RAND_22;
  wire  _T_22; // @[MBRProcessor.scala 9:22]
  wire  _T_23; // @[MBRProcessor.scala 9:19]
  wire  _T_24; // @[MBRProcessor.scala 41:64]
  wire  _T_25; // @[MBRProcessor.scala 41:40]
  wire  _T_26; // @[MBRProcessor.scala 46:25]
  wire [1:0] _T_28; // @[MBRProcessor.scala 47:26]
  wire  _T_29; // @[MBRProcessor.scala 48:25]
  wire  _T_30; // @[Conditional.scala 37:30]
  wire  _T_31; // @[Conditional.scala 37:30]
  wire  _T_32; // @[Conditional.scala 37:30]
  wire  _T_33; // @[Conditional.scala 37:30]
  wire  _T_34; // @[Conditional.scala 37:30]
  wire  _T_35; // @[Conditional.scala 37:30]
  wire  _T_36; // @[Conditional.scala 37:30]
  wire  _T_37; // @[Conditional.scala 37:30]
  wire  _T_38; // @[Conditional.scala 37:30]
  wire  _T_39; // @[Conditional.scala 37:30]
  wire  _T_40; // @[Conditional.scala 37:30]
  wire  _T_41; // @[Conditional.scala 37:30]
  wire  _T_42; // @[Conditional.scala 37:30]
  wire  _T_43; // @[Conditional.scala 37:30]
  wire  _T_44; // @[Conditional.scala 37:30]
  wire  _T_45; // @[Conditional.scala 37:30]
  assign _T_5 = {PartitionStart_0_1,PartitionStart_0_0}; // @[MBRProcessor.scala 28:45]
  assign _T_6 = {PartitionStart_0_3,PartitionStart_0_2}; // @[MBRProcessor.scala 28:45]
  assign _T_8 = {PartitionStart_1_1,PartitionStart_1_0}; // @[MBRProcessor.scala 29:45]
  assign _T_9 = {PartitionStart_1_3,PartitionStart_1_2}; // @[MBRProcessor.scala 29:45]
  assign _T_11 = {PartitionStart_2_1,PartitionStart_2_0}; // @[MBRProcessor.scala 30:45]
  assign _T_12 = {PartitionStart_2_3,PartitionStart_2_2}; // @[MBRProcessor.scala 30:45]
  assign _T_14 = {PartitionStart_3_1,PartitionStart_3_0}; // @[MBRProcessor.scala 31:45]
  assign _T_15 = {PartitionStart_3_3,PartitionStart_3_2}; // @[MBRProcessor.scala 31:45]
  assign currentLogicalBlock = mca + dbc; // @[MBRProcessor.scala 38:32]
  assign _T_20 = io_IsReading & _T_19; // @[MBRProcessor.scala 9:11]
  assign _T_22 = _T_21 == 1'h0; // @[MBRProcessor.scala 9:22]
  assign _T_23 = _T_20 & _T_22; // @[MBRProcessor.scala 9:19]
  assign _T_24 = prevDataBlocksCount != io_DataBlocksCount; // @[MBRProcessor.scala 41:64]
  assign _T_25 = _T_23 | _T_24; // @[MBRProcessor.scala 41:40]
  assign _T_26 = late > 2'h1; // @[MBRProcessor.scala 46:25]
  assign _T_28 = late - 2'h1; // @[MBRProcessor.scala 47:26]
  assign _T_29 = late == 2'h1; // @[MBRProcessor.scala 48:25]
  assign _T_30 = 32'h1c6 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_31 = 32'h1c7 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_32 = 32'h1c8 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_33 = 32'h1c9 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_34 = 32'h1d6 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_35 = 32'h1d7 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_36 = 32'h1d8 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_37 = 32'h1d9 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_38 = 32'h1e6 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_39 = 32'h1e7 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_40 = 32'h1e8 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_41 = 32'h1e9 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_42 = 32'h1f6 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_43 = 32'h1f7 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_44 = 32'h1f8 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign _T_45 = 32'h1f9 == currentLogicalBlock; // @[Conditional.scala 37:30]
  assign io_Partition1Start = {_T_6,_T_5}; // @[MBRProcessor.scala 28:24]
  assign io_Partition2Start = {_T_9,_T_8}; // @[MBRProcessor.scala 29:24]
  assign io_Partition3Start = {_T_12,_T_11}; // @[MBRProcessor.scala 30:24]
  assign io_Partition4Start = {_T_15,_T_14}; // @[MBRProcessor.scala 31:24]
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
  prevDataBlocksCount = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  late = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  PartitionStart_0_0 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  PartitionStart_0_1 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  PartitionStart_0_2 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  PartitionStart_0_3 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  PartitionStart_1_0 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  PartitionStart_1_1 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  PartitionStart_1_2 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  PartitionStart_1_3 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  PartitionStart_2_0 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  PartitionStart_2_1 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  PartitionStart_2_2 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  PartitionStart_2_3 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  PartitionStart_3_0 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  PartitionStart_3_1 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  PartitionStart_3_2 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  PartitionStart_3_3 = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  buf_ = _RAND_18[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  mca = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  dbc = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_19 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_21 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    prevDataBlocksCount <= io_DataBlocksCount;
    if (reset) begin
      late <= 2'h0;
    end else begin
      if (io_IsReading) begin
        if (_T_25) begin
          late <= 2'h3;
        end else begin
          if (_T_26) begin
            late <= _T_28;
          end else begin
            if (_T_29) begin
              late <= 2'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_0_0 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (_T_30) begin
                PartitionStart_0_0 <= buf_;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_0_1 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (_T_31) begin
                  PartitionStart_0_1 <= buf_;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_0_2 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (_T_32) begin
                    PartitionStart_0_2 <= buf_;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_0_3 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (_T_33) begin
                      PartitionStart_0_3 <= buf_;
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
      PartitionStart_1_0 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (_T_34) begin
                        PartitionStart_1_0 <= buf_;
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
      PartitionStart_1_1 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (_T_35) begin
                          PartitionStart_1_1 <= buf_;
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
    end
    if (reset) begin
      PartitionStart_1_2 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (_T_36) begin
                            PartitionStart_1_2 <= buf_;
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
      end
    end
    if (reset) begin
      PartitionStart_1_3 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (_T_37) begin
                              PartitionStart_1_3 <= buf_;
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
        end
      end
    end
    if (reset) begin
      PartitionStart_2_0 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (!(_T_37)) begin
                              if (_T_38) begin
                                PartitionStart_2_0 <= buf_;
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
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_2_1 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (!(_T_37)) begin
                              if (!(_T_38)) begin
                                if (_T_39) begin
                                  PartitionStart_2_1 <= buf_;
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
            end
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_2_2 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (!(_T_37)) begin
                              if (!(_T_38)) begin
                                if (!(_T_39)) begin
                                  if (_T_40) begin
                                    PartitionStart_2_2 <= buf_;
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
              end
            end
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_2_3 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (!(_T_37)) begin
                              if (!(_T_38)) begin
                                if (!(_T_39)) begin
                                  if (!(_T_40)) begin
                                    if (_T_41) begin
                                      PartitionStart_2_3 <= buf_;
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
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_3_0 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (!(_T_37)) begin
                              if (!(_T_38)) begin
                                if (!(_T_39)) begin
                                  if (!(_T_40)) begin
                                    if (!(_T_41)) begin
                                      if (_T_42) begin
                                        PartitionStart_3_0 <= buf_;
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
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      PartitionStart_3_1 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (!(_T_37)) begin
                              if (!(_T_38)) begin
                                if (!(_T_39)) begin
                                  if (!(_T_40)) begin
                                    if (!(_T_41)) begin
                                      if (!(_T_42)) begin
                                        if (_T_43) begin
                                          PartitionStart_3_1 <= buf_;
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
      PartitionStart_3_2 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (!(_T_37)) begin
                              if (!(_T_38)) begin
                                if (!(_T_39)) begin
                                  if (!(_T_40)) begin
                                    if (!(_T_41)) begin
                                      if (!(_T_42)) begin
                                        if (!(_T_43)) begin
                                          if (_T_44) begin
                                            PartitionStart_3_2 <= buf_;
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
      PartitionStart_3_3 <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (!(_T_25)) begin
          if (!(_T_26)) begin
            if (_T_29) begin
              if (!(_T_30)) begin
                if (!(_T_31)) begin
                  if (!(_T_32)) begin
                    if (!(_T_33)) begin
                      if (!(_T_34)) begin
                        if (!(_T_35)) begin
                          if (!(_T_36)) begin
                            if (!(_T_37)) begin
                              if (!(_T_38)) begin
                                if (!(_T_39)) begin
                                  if (!(_T_40)) begin
                                    if (!(_T_41)) begin
                                      if (!(_T_42)) begin
                                        if (!(_T_43)) begin
                                          if (!(_T_44)) begin
                                            if (_T_45) begin
                                              PartitionStart_3_3 <= buf_;
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
    end
    if (reset) begin
      buf_ <= 8'h0;
    end else begin
      if (io_IsReading) begin
        if (_T_25) begin
          buf_ <= io_Buffer;
        end
      end
    end
    if (reset) begin
      mca <= 32'h0;
    end else begin
      if (io_IsReading) begin
        if (_T_25) begin
          mca <= io_MasterCommandArgument;
        end
      end
    end
    if (reset) begin
      dbc <= 32'h0;
    end else begin
      if (io_IsReading) begin
        if (_T_25) begin
          dbc <= io_DataBlocksCount;
        end
      end
    end
    _T_19 <= io_IsReading;
    _T_21 <= _T_19;
  end
endmodule
