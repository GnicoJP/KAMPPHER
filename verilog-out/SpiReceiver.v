module SpiReceiver( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
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
  output [31:0] io_CommandArgument, // @[:@6.4]
  output [7:0]  io____counter, // @[:@6.4]
  output [2:0]  io____state // @[:@6.4]
);
  reg  commandBuffer [0:5]; // @[SpiReceiver.scala 41:36:@16.4]
  reg [31:0] _RAND_0;
  wire  commandBuffer__T_94_data; // @[SpiReceiver.scala 41:36:@16.4]
  wire [2:0] commandBuffer__T_94_addr; // @[SpiReceiver.scala 41:36:@16.4]
  reg [31:0] _RAND_1;
  wire  commandBuffer__T_96_data; // @[SpiReceiver.scala 41:36:@16.4]
  wire [2:0] commandBuffer__T_96_addr; // @[SpiReceiver.scala 41:36:@16.4]
  reg [31:0] _RAND_2;
  wire  commandBuffer__T_98_data; // @[SpiReceiver.scala 41:36:@16.4]
  wire [2:0] commandBuffer__T_98_addr; // @[SpiReceiver.scala 41:36:@16.4]
  reg [31:0] _RAND_3;
  wire  commandBuffer__T_100_data; // @[SpiReceiver.scala 41:36:@16.4]
  wire [2:0] commandBuffer__T_100_addr; // @[SpiReceiver.scala 41:36:@16.4]
  reg [31:0] _RAND_4;
  wire  commandBuffer__T_102_data; // @[SpiReceiver.scala 41:36:@16.4]
  wire [2:0] commandBuffer__T_102_addr; // @[SpiReceiver.scala 41:36:@16.4]
  reg [31:0] _RAND_5;
  wire  commandBuffer__T_104_data; // @[SpiReceiver.scala 41:36:@16.4]
  wire [2:0] commandBuffer__T_104_addr; // @[SpiReceiver.scala 41:36:@16.4]
  reg [31:0] _RAND_6;
  wire  commandBuffer__T_215_data; // @[SpiReceiver.scala 41:36:@16.4]
  wire [2:0] commandBuffer__T_215_addr; // @[SpiReceiver.scala 41:36:@16.4]
  wire  commandBuffer__T_215_mask; // @[SpiReceiver.scala 41:36:@16.4]
  wire  commandBuffer__T_215_en; // @[SpiReceiver.scala 41:36:@16.4]
  reg  commandArgumentBuffer [0:31]; // @[SpiReceiver.scala 42:44:@17.4]
  reg [31:0] _RAND_7;
  wire  commandArgumentBuffer__T_106_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_106_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_108_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_108_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_110_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_110_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_112_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_112_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_114_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_114_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_116_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_116_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_118_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_118_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_120_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_120_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_122_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_122_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_124_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_124_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_126_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_126_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_128_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_128_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_130_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_130_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_132_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_132_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_134_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_134_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_136_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_136_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_138_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_138_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_140_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_140_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_142_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_142_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_144_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_144_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_146_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_146_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_148_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_148_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_150_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_150_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_152_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_152_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_154_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_154_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_156_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_156_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_158_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_158_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_160_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_160_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_162_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_162_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_164_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_164_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_166_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_166_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_168_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_168_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_224_data; // @[SpiReceiver.scala 42:44:@17.4]
  wire [4:0] commandArgumentBuffer__T_224_addr; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_224_mask; // @[SpiReceiver.scala 42:44:@17.4]
  wire  commandArgumentBuffer__T_224_en; // @[SpiReceiver.scala 42:44:@17.4]
  reg [2:0] state; // @[SpiReceiver.scala 34:24:@10.4]
  reg [31:0] _RAND_8;
  reg [7:0] counter; // @[SpiReceiver.scala 35:26:@11.4]
  reg [31:0] _RAND_9;
  reg  readSuccess; // @[SpiReceiver.scala 37:30:@13.4]
  reg [31:0] _RAND_10;
  wire  commandVec_2; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@32.4]
  wire  commandVec_1; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@30.4]
  wire  commandVec_0; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@28.4]
  wire [2:0] _T_170; // @[SpiReceiver.scala 58:30:@104.4]
  wire  commandVec_5; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@38.4]
  wire  commandVec_4; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@36.4]
  wire  commandVec_3; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@34.4]
  wire [2:0] _T_172; // @[SpiReceiver.scala 58:30:@106.4]
  wire  commandArgumentVec_1; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@42.4]
  wire  commandArgumentVec_0; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@40.4]
  wire  commandArgumentVec_3; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@46.4]
  wire  commandArgumentVec_2; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@44.4]
  wire  commandArgumentVec_5; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@50.4]
  wire  commandArgumentVec_4; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@48.4]
  wire  commandArgumentVec_7; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@54.4]
  wire  commandArgumentVec_6; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@52.4]
  wire [7:0] _T_180; // @[SpiReceiver.scala 59:46:@115.4]
  wire  commandArgumentVec_9; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@58.4]
  wire  commandArgumentVec_8; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@56.4]
  wire  commandArgumentVec_11; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@62.4]
  wire  commandArgumentVec_10; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@60.4]
  wire  commandArgumentVec_13; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@66.4]
  wire  commandArgumentVec_12; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@64.4]
  wire  commandArgumentVec_15; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@70.4]
  wire  commandArgumentVec_14; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@68.4]
  wire [15:0] _T_188; // @[SpiReceiver.scala 59:46:@123.4]
  wire  commandArgumentVec_17; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@74.4]
  wire  commandArgumentVec_16; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@72.4]
  wire  commandArgumentVec_19; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@78.4]
  wire  commandArgumentVec_18; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@76.4]
  wire  commandArgumentVec_21; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@82.4]
  wire  commandArgumentVec_20; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@80.4]
  wire  commandArgumentVec_23; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@86.4]
  wire  commandArgumentVec_22; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@84.4]
  wire [7:0] _T_195; // @[SpiReceiver.scala 59:46:@130.4]
  wire  commandArgumentVec_25; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@90.4]
  wire  commandArgumentVec_24; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@88.4]
  wire  commandArgumentVec_27; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@94.4]
  wire  commandArgumentVec_26; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@92.4]
  wire  commandArgumentVec_29; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@98.4]
  wire  commandArgumentVec_28; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@96.4]
  wire  commandArgumentVec_31; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@102.4]
  wire  commandArgumentVec_30; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@100.4]
  wire [15:0] _T_203; // @[SpiReceiver.scala 59:46:@138.4]
  wire  _T_205; // @[Conditional.scala 37:30:@141.4]
  wire  _T_207; // @[SpiReceiver.scala 63:28:@143.6]
  wire [2:0] _GEN_0; // @[SpiReceiver.scala 63:41:@144.6]
  wire  _GEN_1; // @[SpiReceiver.scala 63:41:@144.6]
  wire  _T_210; // @[Conditional.scala 37:30:@151.6]
  wire [2:0] _T_211; // @[SpiReceiver.scala 70:25:@153.8]
  wire  _T_213; // @[Conditional.scala 37:30:@158.8]
  wire  _T_217; // @[SpiReceiver.scala 75:26:@163.10]
  wire [8:0] _T_220; // @[SpiReceiver.scala 79:36:@169.12]
  wire [7:0] _T_221; // @[SpiReceiver.scala 79:36:@170.12]
  wire [2:0] _GEN_2; // @[SpiReceiver.scala 75:35:@164.10]
  wire [7:0] _GEN_3; // @[SpiReceiver.scala 75:35:@164.10]
  wire  _T_222; // @[Conditional.scala 37:30:@175.10]
  wire  _T_226; // @[SpiReceiver.scala 84:26:@180.12]
  wire [2:0] _GEN_4; // @[SpiReceiver.scala 84:36:@181.12]
  wire [7:0] _GEN_5; // @[SpiReceiver.scala 84:36:@181.12]
  wire  _T_231; // @[Conditional.scala 37:30:@192.12]
  wire  _T_235; // @[SpiReceiver.scala 93:26:@197.14]
  wire [2:0] _GEN_6; // @[SpiReceiver.scala 93:35:@198.14]
  wire [7:0] _GEN_7; // @[SpiReceiver.scala 93:35:@198.14]
  wire  _T_240; // @[Conditional.scala 37:30:@209.14]
  wire  _GEN_8; // @[SpiReceiver.scala 101:39:@212.16]
  wire  _GEN_9; // @[Conditional.scala 39:67:@210.14]
  wire [2:0] _GEN_10; // @[Conditional.scala 39:67:@210.14]
  wire  _GEN_14; // @[Conditional.scala 39:67:@193.12]
  wire [2:0] _GEN_16; // @[Conditional.scala 39:67:@193.12]
  wire [7:0] _GEN_17; // @[Conditional.scala 39:67:@193.12]
  wire  _GEN_18; // @[Conditional.scala 39:67:@193.12]
  wire [2:0] _GEN_24; // @[Conditional.scala 39:67:@176.10]
  wire [7:0] _GEN_25; // @[Conditional.scala 39:67:@176.10]
  wire  _GEN_31; // @[Conditional.scala 39:67:@176.10]
  wire [2:0] _GEN_37; // @[Conditional.scala 39:67:@159.8]
  wire [7:0] _GEN_38; // @[Conditional.scala 39:67:@159.8]
  wire  _GEN_41; // @[Conditional.scala 39:67:@159.8]
  wire  _GEN_49; // @[Conditional.scala 39:67:@159.8]
  wire [2:0] _GEN_50; // @[Conditional.scala 39:67:@152.6]
  wire [7:0] _GEN_51; // @[Conditional.scala 39:67:@152.6]
  wire  _GEN_54; // @[Conditional.scala 39:67:@152.6]
  wire  _GEN_59; // @[Conditional.scala 39:67:@152.6]
  wire  _GEN_67; // @[Conditional.scala 39:67:@152.6]
  wire [2:0] _GEN_68; // @[Conditional.scala 40:58:@142.4]
  wire  _GEN_69; // @[Conditional.scala 40:58:@142.4]
  wire [7:0] _GEN_70; // @[Conditional.scala 40:58:@142.4]
  reg [2:0] commandBuffer__T_94_addr_pipe_0;
  reg [31:0] _RAND_11;
  reg [2:0] commandBuffer__T_96_addr_pipe_0;
  reg [31:0] _RAND_12;
  reg [2:0] commandBuffer__T_98_addr_pipe_0;
  reg [31:0] _RAND_13;
  reg [2:0] commandBuffer__T_100_addr_pipe_0;
  reg [31:0] _RAND_14;
  reg [2:0] commandBuffer__T_102_addr_pipe_0;
  reg [31:0] _RAND_15;
  reg [2:0] commandBuffer__T_104_addr_pipe_0;
  reg [31:0] _RAND_16;
  reg [4:0] commandArgumentBuffer__T_106_addr_pipe_0;
  reg [31:0] _RAND_17;
  reg [4:0] commandArgumentBuffer__T_108_addr_pipe_0;
  reg [31:0] _RAND_18;
  reg [4:0] commandArgumentBuffer__T_110_addr_pipe_0;
  reg [31:0] _RAND_19;
  reg [4:0] commandArgumentBuffer__T_112_addr_pipe_0;
  reg [31:0] _RAND_20;
  reg [4:0] commandArgumentBuffer__T_114_addr_pipe_0;
  reg [31:0] _RAND_21;
  reg [4:0] commandArgumentBuffer__T_116_addr_pipe_0;
  reg [31:0] _RAND_22;
  reg [4:0] commandArgumentBuffer__T_118_addr_pipe_0;
  reg [31:0] _RAND_23;
  reg [4:0] commandArgumentBuffer__T_120_addr_pipe_0;
  reg [31:0] _RAND_24;
  reg [4:0] commandArgumentBuffer__T_122_addr_pipe_0;
  reg [31:0] _RAND_25;
  reg [4:0] commandArgumentBuffer__T_124_addr_pipe_0;
  reg [31:0] _RAND_26;
  reg [4:0] commandArgumentBuffer__T_126_addr_pipe_0;
  reg [31:0] _RAND_27;
  reg [4:0] commandArgumentBuffer__T_128_addr_pipe_0;
  reg [31:0] _RAND_28;
  reg [4:0] commandArgumentBuffer__T_130_addr_pipe_0;
  reg [31:0] _RAND_29;
  reg [4:0] commandArgumentBuffer__T_132_addr_pipe_0;
  reg [31:0] _RAND_30;
  reg [4:0] commandArgumentBuffer__T_134_addr_pipe_0;
  reg [31:0] _RAND_31;
  reg [4:0] commandArgumentBuffer__T_136_addr_pipe_0;
  reg [31:0] _RAND_32;
  reg [4:0] commandArgumentBuffer__T_138_addr_pipe_0;
  reg [31:0] _RAND_33;
  reg [4:0] commandArgumentBuffer__T_140_addr_pipe_0;
  reg [31:0] _RAND_34;
  reg [4:0] commandArgumentBuffer__T_142_addr_pipe_0;
  reg [31:0] _RAND_35;
  reg [4:0] commandArgumentBuffer__T_144_addr_pipe_0;
  reg [31:0] _RAND_36;
  reg [4:0] commandArgumentBuffer__T_146_addr_pipe_0;
  reg [31:0] _RAND_37;
  reg [4:0] commandArgumentBuffer__T_148_addr_pipe_0;
  reg [31:0] _RAND_38;
  reg [4:0] commandArgumentBuffer__T_150_addr_pipe_0;
  reg [31:0] _RAND_39;
  reg [4:0] commandArgumentBuffer__T_152_addr_pipe_0;
  reg [31:0] _RAND_40;
  reg [4:0] commandArgumentBuffer__T_154_addr_pipe_0;
  reg [31:0] _RAND_41;
  reg [4:0] commandArgumentBuffer__T_156_addr_pipe_0;
  reg [31:0] _RAND_42;
  reg [4:0] commandArgumentBuffer__T_158_addr_pipe_0;
  reg [31:0] _RAND_43;
  reg [4:0] commandArgumentBuffer__T_160_addr_pipe_0;
  reg [31:0] _RAND_44;
  reg [4:0] commandArgumentBuffer__T_162_addr_pipe_0;
  reg [31:0] _RAND_45;
  reg [4:0] commandArgumentBuffer__T_164_addr_pipe_0;
  reg [31:0] _RAND_46;
  reg [4:0] commandArgumentBuffer__T_166_addr_pipe_0;
  reg [31:0] _RAND_47;
  reg [4:0] commandArgumentBuffer__T_168_addr_pipe_0;
  reg [31:0] _RAND_48;
  assign commandBuffer__T_94_addr = commandBuffer__T_94_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_94_data = commandBuffer[commandBuffer__T_94_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `else
  assign commandBuffer__T_94_data = commandBuffer__T_94_addr >= 3'h6 ? _RAND_1[0:0] : commandBuffer[commandBuffer__T_94_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_96_addr = commandBuffer__T_96_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_96_data = commandBuffer[commandBuffer__T_96_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `else
  assign commandBuffer__T_96_data = commandBuffer__T_96_addr >= 3'h6 ? _RAND_2[0:0] : commandBuffer[commandBuffer__T_96_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_98_addr = commandBuffer__T_98_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_98_data = commandBuffer[commandBuffer__T_98_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `else
  assign commandBuffer__T_98_data = commandBuffer__T_98_addr >= 3'h6 ? _RAND_3[0:0] : commandBuffer[commandBuffer__T_98_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_100_addr = commandBuffer__T_100_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_100_data = commandBuffer[commandBuffer__T_100_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `else
  assign commandBuffer__T_100_data = commandBuffer__T_100_addr >= 3'h6 ? _RAND_4[0:0] : commandBuffer[commandBuffer__T_100_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_102_addr = commandBuffer__T_102_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_102_data = commandBuffer[commandBuffer__T_102_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `else
  assign commandBuffer__T_102_data = commandBuffer__T_102_addr >= 3'h6 ? _RAND_5[0:0] : commandBuffer[commandBuffer__T_102_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_104_addr = commandBuffer__T_104_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_104_data = commandBuffer[commandBuffer__T_104_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `else
  assign commandBuffer__T_104_data = commandBuffer__T_104_addr >= 3'h6 ? _RAND_6[0:0] : commandBuffer[commandBuffer__T_104_addr]; // @[SpiReceiver.scala 41:36:@16.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_215_data = io_SPI_DI;
  assign commandBuffer__T_215_addr = counter[2:0];
  assign commandBuffer__T_215_mask = 1'h1;
  assign commandBuffer__T_215_en = _T_205 ? 1'h0 : _GEN_54;
  assign commandArgumentBuffer__T_106_addr = commandArgumentBuffer__T_106_addr_pipe_0;
  assign commandArgumentBuffer__T_106_data = commandArgumentBuffer[commandArgumentBuffer__T_106_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_108_addr = commandArgumentBuffer__T_108_addr_pipe_0;
  assign commandArgumentBuffer__T_108_data = commandArgumentBuffer[commandArgumentBuffer__T_108_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_110_addr = commandArgumentBuffer__T_110_addr_pipe_0;
  assign commandArgumentBuffer__T_110_data = commandArgumentBuffer[commandArgumentBuffer__T_110_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_112_addr = commandArgumentBuffer__T_112_addr_pipe_0;
  assign commandArgumentBuffer__T_112_data = commandArgumentBuffer[commandArgumentBuffer__T_112_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_114_addr = commandArgumentBuffer__T_114_addr_pipe_0;
  assign commandArgumentBuffer__T_114_data = commandArgumentBuffer[commandArgumentBuffer__T_114_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_116_addr = commandArgumentBuffer__T_116_addr_pipe_0;
  assign commandArgumentBuffer__T_116_data = commandArgumentBuffer[commandArgumentBuffer__T_116_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_118_addr = commandArgumentBuffer__T_118_addr_pipe_0;
  assign commandArgumentBuffer__T_118_data = commandArgumentBuffer[commandArgumentBuffer__T_118_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_120_addr = commandArgumentBuffer__T_120_addr_pipe_0;
  assign commandArgumentBuffer__T_120_data = commandArgumentBuffer[commandArgumentBuffer__T_120_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_122_addr = commandArgumentBuffer__T_122_addr_pipe_0;
  assign commandArgumentBuffer__T_122_data = commandArgumentBuffer[commandArgumentBuffer__T_122_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_124_addr = commandArgumentBuffer__T_124_addr_pipe_0;
  assign commandArgumentBuffer__T_124_data = commandArgumentBuffer[commandArgumentBuffer__T_124_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_126_addr = commandArgumentBuffer__T_126_addr_pipe_0;
  assign commandArgumentBuffer__T_126_data = commandArgumentBuffer[commandArgumentBuffer__T_126_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_128_addr = commandArgumentBuffer__T_128_addr_pipe_0;
  assign commandArgumentBuffer__T_128_data = commandArgumentBuffer[commandArgumentBuffer__T_128_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_130_addr = commandArgumentBuffer__T_130_addr_pipe_0;
  assign commandArgumentBuffer__T_130_data = commandArgumentBuffer[commandArgumentBuffer__T_130_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_132_addr = commandArgumentBuffer__T_132_addr_pipe_0;
  assign commandArgumentBuffer__T_132_data = commandArgumentBuffer[commandArgumentBuffer__T_132_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_134_addr = commandArgumentBuffer__T_134_addr_pipe_0;
  assign commandArgumentBuffer__T_134_data = commandArgumentBuffer[commandArgumentBuffer__T_134_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_136_addr = commandArgumentBuffer__T_136_addr_pipe_0;
  assign commandArgumentBuffer__T_136_data = commandArgumentBuffer[commandArgumentBuffer__T_136_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_138_addr = commandArgumentBuffer__T_138_addr_pipe_0;
  assign commandArgumentBuffer__T_138_data = commandArgumentBuffer[commandArgumentBuffer__T_138_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_140_addr = commandArgumentBuffer__T_140_addr_pipe_0;
  assign commandArgumentBuffer__T_140_data = commandArgumentBuffer[commandArgumentBuffer__T_140_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_142_addr = commandArgumentBuffer__T_142_addr_pipe_0;
  assign commandArgumentBuffer__T_142_data = commandArgumentBuffer[commandArgumentBuffer__T_142_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_144_addr = commandArgumentBuffer__T_144_addr_pipe_0;
  assign commandArgumentBuffer__T_144_data = commandArgumentBuffer[commandArgumentBuffer__T_144_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_146_addr = commandArgumentBuffer__T_146_addr_pipe_0;
  assign commandArgumentBuffer__T_146_data = commandArgumentBuffer[commandArgumentBuffer__T_146_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_148_addr = commandArgumentBuffer__T_148_addr_pipe_0;
  assign commandArgumentBuffer__T_148_data = commandArgumentBuffer[commandArgumentBuffer__T_148_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_150_addr = commandArgumentBuffer__T_150_addr_pipe_0;
  assign commandArgumentBuffer__T_150_data = commandArgumentBuffer[commandArgumentBuffer__T_150_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_152_addr = commandArgumentBuffer__T_152_addr_pipe_0;
  assign commandArgumentBuffer__T_152_data = commandArgumentBuffer[commandArgumentBuffer__T_152_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_154_addr = commandArgumentBuffer__T_154_addr_pipe_0;
  assign commandArgumentBuffer__T_154_data = commandArgumentBuffer[commandArgumentBuffer__T_154_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_156_addr = commandArgumentBuffer__T_156_addr_pipe_0;
  assign commandArgumentBuffer__T_156_data = commandArgumentBuffer[commandArgumentBuffer__T_156_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_158_addr = commandArgumentBuffer__T_158_addr_pipe_0;
  assign commandArgumentBuffer__T_158_data = commandArgumentBuffer[commandArgumentBuffer__T_158_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_160_addr = commandArgumentBuffer__T_160_addr_pipe_0;
  assign commandArgumentBuffer__T_160_data = commandArgumentBuffer[commandArgumentBuffer__T_160_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_162_addr = commandArgumentBuffer__T_162_addr_pipe_0;
  assign commandArgumentBuffer__T_162_data = commandArgumentBuffer[commandArgumentBuffer__T_162_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_164_addr = commandArgumentBuffer__T_164_addr_pipe_0;
  assign commandArgumentBuffer__T_164_data = commandArgumentBuffer[commandArgumentBuffer__T_164_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_166_addr = commandArgumentBuffer__T_166_addr_pipe_0;
  assign commandArgumentBuffer__T_166_data = commandArgumentBuffer[commandArgumentBuffer__T_166_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_168_addr = commandArgumentBuffer__T_168_addr_pipe_0;
  assign commandArgumentBuffer__T_168_data = commandArgumentBuffer[commandArgumentBuffer__T_168_addr]; // @[SpiReceiver.scala 42:44:@17.4]
  assign commandArgumentBuffer__T_224_data = io_SPI_DI;
  assign commandArgumentBuffer__T_224_addr = counter[4:0];
  assign commandArgumentBuffer__T_224_mask = 1'h1;
  assign commandArgumentBuffer__T_224_en = _T_205 ? 1'h0 : _GEN_59;
  assign commandVec_2 = commandBuffer__T_98_data; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@32.4]
  assign commandVec_1 = commandBuffer__T_96_data; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@30.4]
  assign commandVec_0 = commandBuffer__T_94_data; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@28.4]
  assign _T_170 = {commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 58:30:@104.4]
  assign commandVec_5 = commandBuffer__T_104_data; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@38.4]
  assign commandVec_4 = commandBuffer__T_102_data; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@36.4]
  assign commandVec_3 = commandBuffer__T_100_data; // @[SpiReceiver.scala 39:26:@14.4 SpiReceiver.scala 53:23:@34.4]
  assign _T_172 = {commandVec_5,commandVec_4,commandVec_3}; // @[SpiReceiver.scala 58:30:@106.4]
  assign commandArgumentVec_1 = commandArgumentBuffer__T_108_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@42.4]
  assign commandArgumentVec_0 = commandArgumentBuffer__T_106_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@40.4]
  assign commandArgumentVec_3 = commandArgumentBuffer__T_112_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@46.4]
  assign commandArgumentVec_2 = commandArgumentBuffer__T_110_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@44.4]
  assign commandArgumentVec_5 = commandArgumentBuffer__T_116_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@50.4]
  assign commandArgumentVec_4 = commandArgumentBuffer__T_114_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@48.4]
  assign commandArgumentVec_7 = commandArgumentBuffer__T_120_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@54.4]
  assign commandArgumentVec_6 = commandArgumentBuffer__T_118_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@52.4]
  assign _T_180 = {commandArgumentVec_7,commandArgumentVec_6,commandArgumentVec_5,commandArgumentVec_4,commandArgumentVec_3,commandArgumentVec_2,commandArgumentVec_1,commandArgumentVec_0}; // @[SpiReceiver.scala 59:46:@115.4]
  assign commandArgumentVec_9 = commandArgumentBuffer__T_124_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@58.4]
  assign commandArgumentVec_8 = commandArgumentBuffer__T_122_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@56.4]
  assign commandArgumentVec_11 = commandArgumentBuffer__T_128_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@62.4]
  assign commandArgumentVec_10 = commandArgumentBuffer__T_126_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@60.4]
  assign commandArgumentVec_13 = commandArgumentBuffer__T_132_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@66.4]
  assign commandArgumentVec_12 = commandArgumentBuffer__T_130_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@64.4]
  assign commandArgumentVec_15 = commandArgumentBuffer__T_136_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@70.4]
  assign commandArgumentVec_14 = commandArgumentBuffer__T_134_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@68.4]
  assign _T_188 = {commandArgumentVec_15,commandArgumentVec_14,commandArgumentVec_13,commandArgumentVec_12,commandArgumentVec_11,commandArgumentVec_10,commandArgumentVec_9,commandArgumentVec_8,_T_180}; // @[SpiReceiver.scala 59:46:@123.4]
  assign commandArgumentVec_17 = commandArgumentBuffer__T_140_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@74.4]
  assign commandArgumentVec_16 = commandArgumentBuffer__T_138_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@72.4]
  assign commandArgumentVec_19 = commandArgumentBuffer__T_144_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@78.4]
  assign commandArgumentVec_18 = commandArgumentBuffer__T_142_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@76.4]
  assign commandArgumentVec_21 = commandArgumentBuffer__T_148_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@82.4]
  assign commandArgumentVec_20 = commandArgumentBuffer__T_146_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@80.4]
  assign commandArgumentVec_23 = commandArgumentBuffer__T_152_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@86.4]
  assign commandArgumentVec_22 = commandArgumentBuffer__T_150_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@84.4]
  assign _T_195 = {commandArgumentVec_23,commandArgumentVec_22,commandArgumentVec_21,commandArgumentVec_20,commandArgumentVec_19,commandArgumentVec_18,commandArgumentVec_17,commandArgumentVec_16}; // @[SpiReceiver.scala 59:46:@130.4]
  assign commandArgumentVec_25 = commandArgumentBuffer__T_156_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@90.4]
  assign commandArgumentVec_24 = commandArgumentBuffer__T_154_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@88.4]
  assign commandArgumentVec_27 = commandArgumentBuffer__T_160_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@94.4]
  assign commandArgumentVec_26 = commandArgumentBuffer__T_158_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@92.4]
  assign commandArgumentVec_29 = commandArgumentBuffer__T_164_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@98.4]
  assign commandArgumentVec_28 = commandArgumentBuffer__T_162_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@96.4]
  assign commandArgumentVec_31 = commandArgumentBuffer__T_168_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@102.4]
  assign commandArgumentVec_30 = commandArgumentBuffer__T_166_data; // @[SpiReceiver.scala 40:34:@15.4 SpiReceiver.scala 56:31:@100.4]
  assign _T_203 = {commandArgumentVec_31,commandArgumentVec_30,commandArgumentVec_29,commandArgumentVec_28,commandArgumentVec_27,commandArgumentVec_26,commandArgumentVec_25,commandArgumentVec_24,_T_195}; // @[SpiReceiver.scala 59:46:@138.4]
  assign _T_205 = 3'h0 == state; // @[Conditional.scala 37:30:@141.4]
  assign _T_207 = io_SPI_DI == 1'h0; // @[SpiReceiver.scala 63:28:@143.6]
  assign _GEN_0 = _T_207 ? 3'h1 : state; // @[SpiReceiver.scala 63:41:@144.6]
  assign _GEN_1 = _T_207 ? 1'h0 : readSuccess; // @[SpiReceiver.scala 63:41:@144.6]
  assign _T_210 = 3'h1 == state; // @[Conditional.scala 37:30:@151.6]
  assign _T_211 = io_SPI_DI ? 3'h2 : 3'h0; // @[SpiReceiver.scala 70:25:@153.8]
  assign _T_213 = 3'h2 == state; // @[Conditional.scala 37:30:@158.8]
  assign _T_217 = counter == 8'h5; // @[SpiReceiver.scala 75:26:@163.10]
  assign _T_220 = counter + 8'h1; // @[SpiReceiver.scala 79:36:@169.12]
  assign _T_221 = counter + 8'h1; // @[SpiReceiver.scala 79:36:@170.12]
  assign _GEN_2 = _T_217 ? 3'h3 : state; // @[SpiReceiver.scala 75:35:@164.10]
  assign _GEN_3 = _T_217 ? 8'h0 : _T_221; // @[SpiReceiver.scala 75:35:@164.10]
  assign _T_222 = 3'h3 == state; // @[Conditional.scala 37:30:@175.10]
  assign _T_226 = counter == 8'h1f; // @[SpiReceiver.scala 84:26:@180.12]
  assign _GEN_4 = _T_226 ? 3'h4 : state; // @[SpiReceiver.scala 84:36:@181.12]
  assign _GEN_5 = _T_226 ? 8'h0 : _T_221; // @[SpiReceiver.scala 84:36:@181.12]
  assign _T_231 = 3'h4 == state; // @[Conditional.scala 37:30:@192.12]
  assign _T_235 = counter == 8'h6; // @[SpiReceiver.scala 93:26:@197.14]
  assign _GEN_6 = _T_235 ? 3'h5 : state; // @[SpiReceiver.scala 93:35:@198.14]
  assign _GEN_7 = _T_235 ? 8'h0 : _T_221; // @[SpiReceiver.scala 93:35:@198.14]
  assign _T_240 = 3'h5 == state; // @[Conditional.scala 37:30:@209.14]
  assign _GEN_8 = io_SPI_DI ? 1'h1 : readSuccess; // @[SpiReceiver.scala 101:39:@212.16]
  assign _GEN_9 = _T_240 ? _GEN_8 : readSuccess; // @[Conditional.scala 39:67:@210.14]
  assign _GEN_10 = _T_240 ? 3'h0 : state; // @[Conditional.scala 39:67:@210.14]
  assign _GEN_14 = 1'h1; // @[Conditional.scala 39:67:@193.12]
  assign _GEN_16 = _T_231 ? _GEN_6 : _GEN_10; // @[Conditional.scala 39:67:@193.12]
  assign _GEN_17 = _T_231 ? _GEN_7 : counter; // @[Conditional.scala 39:67:@193.12]
  assign _GEN_18 = _T_231 ? readSuccess : _GEN_9; // @[Conditional.scala 39:67:@193.12]
  assign _GEN_24 = _T_222 ? _GEN_4 : _GEN_16; // @[Conditional.scala 39:67:@176.10]
  assign _GEN_25 = _T_222 ? _GEN_5 : _GEN_17; // @[Conditional.scala 39:67:@176.10]
  assign _GEN_31 = _T_222 ? readSuccess : _GEN_18; // @[Conditional.scala 39:67:@176.10]
  assign _GEN_37 = _T_213 ? _GEN_2 : _GEN_24; // @[Conditional.scala 39:67:@159.8]
  assign _GEN_38 = _T_213 ? _GEN_3 : _GEN_25; // @[Conditional.scala 39:67:@159.8]
  assign _GEN_41 = _T_213 ? 1'h0 : _T_222; // @[Conditional.scala 39:67:@159.8]
  assign _GEN_49 = _T_213 ? readSuccess : _GEN_31; // @[Conditional.scala 39:67:@159.8]
  assign _GEN_50 = _T_210 ? _T_211 : _GEN_37; // @[Conditional.scala 39:67:@152.6]
  assign _GEN_51 = _T_210 ? 8'h0 : _GEN_38; // @[Conditional.scala 39:67:@152.6]
  assign _GEN_54 = _T_210 ? 1'h0 : _T_213; // @[Conditional.scala 39:67:@152.6]
  assign _GEN_59 = _T_210 ? 1'h0 : _GEN_41; // @[Conditional.scala 39:67:@152.6]
  assign _GEN_67 = _T_210 ? readSuccess : _GEN_49; // @[Conditional.scala 39:67:@152.6]
  assign _GEN_68 = _T_205 ? _GEN_0 : _GEN_50; // @[Conditional.scala 40:58:@142.4]
  assign _GEN_69 = _T_205 ? _GEN_1 : _GEN_67; // @[Conditional.scala 40:58:@142.4]
  assign _GEN_70 = _T_205 ? 8'h0 : _GEN_51; // @[Conditional.scala 40:58:@142.4]
  assign io_SPI_DO = io_DO; // @[SpiReceiver.scala 30:15:@9.4]
  assign io_DI = io_SPI_DI; // @[SpiReceiver.scala 29:11:@8.4]
  assign io_CommandReadFinished = state > 3'h2; // @[SpiReceiver.scala 45:28:@21.4]
  assign io_ArgumentReadFinished = state > 3'h3; // @[SpiReceiver.scala 46:29:@23.4]
  assign io_Reading = state > 3'h1; // @[SpiReceiver.scala 44:16:@19.4]
  assign io_ReadSuccess = readSuccess; // @[SpiReceiver.scala 47:20:@24.4]
  assign io_Command = {_T_172,_T_170}; // @[SpiReceiver.scala 58:16:@108.4]
  assign io_CommandArgument = {_T_203,_T_188}; // @[SpiReceiver.scala 59:24:@140.4]
  assign io____counter = counter; // @[SpiReceiver.scala 50:19:@26.4]
  assign io____state = state; // @[SpiReceiver.scala 49:17:@25.4]
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
  _RAND_7 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    commandArgumentBuffer[initvar] = _RAND_7[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  state = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  counter = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  readSuccess = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  commandBuffer__T_94_addr_pipe_0 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  commandBuffer__T_96_addr_pipe_0 = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  commandBuffer__T_98_addr_pipe_0 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  commandBuffer__T_100_addr_pipe_0 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  commandBuffer__T_102_addr_pipe_0 = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  commandBuffer__T_104_addr_pipe_0 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  commandArgumentBuffer__T_106_addr_pipe_0 = _RAND_17[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  commandArgumentBuffer__T_108_addr_pipe_0 = _RAND_18[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  commandArgumentBuffer__T_110_addr_pipe_0 = _RAND_19[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  commandArgumentBuffer__T_112_addr_pipe_0 = _RAND_20[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  commandArgumentBuffer__T_114_addr_pipe_0 = _RAND_21[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  commandArgumentBuffer__T_116_addr_pipe_0 = _RAND_22[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  commandArgumentBuffer__T_118_addr_pipe_0 = _RAND_23[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  commandArgumentBuffer__T_120_addr_pipe_0 = _RAND_24[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  commandArgumentBuffer__T_122_addr_pipe_0 = _RAND_25[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  commandArgumentBuffer__T_124_addr_pipe_0 = _RAND_26[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  commandArgumentBuffer__T_126_addr_pipe_0 = _RAND_27[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  commandArgumentBuffer__T_128_addr_pipe_0 = _RAND_28[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  commandArgumentBuffer__T_130_addr_pipe_0 = _RAND_29[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  commandArgumentBuffer__T_132_addr_pipe_0 = _RAND_30[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  commandArgumentBuffer__T_134_addr_pipe_0 = _RAND_31[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  commandArgumentBuffer__T_136_addr_pipe_0 = _RAND_32[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  commandArgumentBuffer__T_138_addr_pipe_0 = _RAND_33[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  commandArgumentBuffer__T_140_addr_pipe_0 = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  commandArgumentBuffer__T_142_addr_pipe_0 = _RAND_35[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  commandArgumentBuffer__T_144_addr_pipe_0 = _RAND_36[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  commandArgumentBuffer__T_146_addr_pipe_0 = _RAND_37[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  commandArgumentBuffer__T_148_addr_pipe_0 = _RAND_38[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  commandArgumentBuffer__T_150_addr_pipe_0 = _RAND_39[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  commandArgumentBuffer__T_152_addr_pipe_0 = _RAND_40[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  commandArgumentBuffer__T_154_addr_pipe_0 = _RAND_41[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  commandArgumentBuffer__T_156_addr_pipe_0 = _RAND_42[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  commandArgumentBuffer__T_158_addr_pipe_0 = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  commandArgumentBuffer__T_160_addr_pipe_0 = _RAND_44[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  commandArgumentBuffer__T_162_addr_pipe_0 = _RAND_45[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  commandArgumentBuffer__T_164_addr_pipe_0 = _RAND_46[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  commandArgumentBuffer__T_166_addr_pipe_0 = _RAND_47[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  commandArgumentBuffer__T_168_addr_pipe_0 = _RAND_48[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(commandBuffer__T_215_en & commandBuffer__T_215_mask) begin
      commandBuffer[commandBuffer__T_215_addr] <= commandBuffer__T_215_data; // @[SpiReceiver.scala 41:36:@16.4]
    end
    if(commandArgumentBuffer__T_224_en & commandArgumentBuffer__T_224_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_224_addr] <= commandArgumentBuffer__T_224_data; // @[SpiReceiver.scala 42:44:@17.4]
    end
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_205) begin
        if (_T_207) begin
          state <= 3'h1;
        end
      end else begin
        if (_T_210) begin
          if (io_SPI_DI) begin
            state <= 3'h2;
          end else begin
            state <= 3'h0;
          end
        end else begin
          if (_T_213) begin
            if (_T_217) begin
              state <= 3'h3;
            end
          end else begin
            if (_T_222) begin
              if (_T_226) begin
                state <= 3'h4;
              end
            end else begin
              if (_T_231) begin
                if (_T_235) begin
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
      if (_T_205) begin
        counter <= 8'h0;
      end else begin
        if (_T_210) begin
          counter <= 8'h0;
        end else begin
          if (_T_213) begin
            if (_T_217) begin
              counter <= 8'h0;
            end else begin
              counter <= _T_221;
            end
          end else begin
            if (_T_222) begin
              if (_T_226) begin
                counter <= 8'h0;
              end else begin
                counter <= _T_221;
              end
            end else begin
              if (_T_231) begin
                if (_T_235) begin
                  counter <= 8'h0;
                end else begin
                  counter <= _T_221;
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
      if (_T_205) begin
        if (_T_207) begin
          readSuccess <= 1'h0;
        end
      end else begin
        if (!(_T_210)) begin
          if (!(_T_213)) begin
            if (!(_T_222)) begin
              if (!(_T_231)) begin
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
      commandBuffer__T_94_addr_pipe_0 <= 3'h0;
    end
    if (_GEN_14) begin
      commandBuffer__T_96_addr_pipe_0 <= 3'h1;
    end
    if (_GEN_14) begin
      commandBuffer__T_98_addr_pipe_0 <= 3'h2;
    end
    if (_GEN_14) begin
      commandBuffer__T_100_addr_pipe_0 <= 3'h3;
    end
    if (_GEN_14) begin
      commandBuffer__T_102_addr_pipe_0 <= 3'h4;
    end
    if (_GEN_14) begin
      commandBuffer__T_104_addr_pipe_0 <= 3'h5;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_106_addr_pipe_0 <= 5'h0;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_108_addr_pipe_0 <= 5'h1;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_110_addr_pipe_0 <= 5'h2;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_112_addr_pipe_0 <= 5'h3;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_114_addr_pipe_0 <= 5'h4;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_116_addr_pipe_0 <= 5'h5;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_118_addr_pipe_0 <= 5'h6;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_120_addr_pipe_0 <= 5'h7;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_122_addr_pipe_0 <= 5'h8;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_124_addr_pipe_0 <= 5'h9;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_126_addr_pipe_0 <= 5'ha;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_128_addr_pipe_0 <= 5'hb;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_130_addr_pipe_0 <= 5'hc;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_132_addr_pipe_0 <= 5'hd;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_134_addr_pipe_0 <= 5'he;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_136_addr_pipe_0 <= 5'hf;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_138_addr_pipe_0 <= 5'h10;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_140_addr_pipe_0 <= 5'h11;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_142_addr_pipe_0 <= 5'h12;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_144_addr_pipe_0 <= 5'h13;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_146_addr_pipe_0 <= 5'h14;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_148_addr_pipe_0 <= 5'h15;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_150_addr_pipe_0 <= 5'h16;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_152_addr_pipe_0 <= 5'h17;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_154_addr_pipe_0 <= 5'h18;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_156_addr_pipe_0 <= 5'h19;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_158_addr_pipe_0 <= 5'h1a;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_160_addr_pipe_0 <= 5'h1b;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_162_addr_pipe_0 <= 5'h1c;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_164_addr_pipe_0 <= 5'h1d;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_166_addr_pipe_0 <= 5'h1e;
    end
    if (_GEN_14) begin
      commandArgumentBuffer__T_168_addr_pipe_0 <= 5'h1f;
    end
  end
endmodule
