module SpiReceiver( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_SPI_CS, // @[:@6.4]
  input         io_SPI_DI, // @[:@6.4]
  output        io_SPI_DO, // @[:@6.4]
  input         io_SPI_CLK, // @[:@6.4]
  input         io_DO, // @[:@6.4]
  output        io_DI, // @[:@6.4]
  output        io_CommandReadFinished, // @[:@6.4]
  output        io_ArgumentReadFinished, // @[:@6.4]
  output        io_ReadSuccess, // @[:@6.4]
  output [5:0]  io_Command, // @[:@6.4]
  output [31:0] io_CommandArgument, // @[:@6.4]
  output [2:0]  io____counter, // @[:@6.4]
  output [2:0]  io____state, // @[:@6.4]
  output [7:0]  io____buffer // @[:@6.4]
);
  reg [2:0] state; // @[SpiReceiver.scala 40:24:@10.4]
  reg [31:0] _RAND_0;
  reg  readSuccess; // @[SpiReceiver.scala 44:30:@13.4]
  reg [31:0] _RAND_1;
  reg [7:0] counter; // @[SpiReceiver.scala 46:26:@14.4]
  reg [31:0] _RAND_2;
  reg  commandVec_0; // @[SpiReceiver.scala 48:25:@15.4]
  reg [31:0] _RAND_3;
  reg  commandVec_1; // @[SpiReceiver.scala 48:25:@15.4]
  reg [31:0] _RAND_4;
  reg  commandVec_2; // @[SpiReceiver.scala 48:25:@15.4]
  reg [31:0] _RAND_5;
  reg  commandVec_3; // @[SpiReceiver.scala 48:25:@15.4]
  reg [31:0] _RAND_6;
  reg  commandVec_4; // @[SpiReceiver.scala 48:25:@15.4]
  reg [31:0] _RAND_7;
  reg  commandVec_5; // @[SpiReceiver.scala 48:25:@15.4]
  reg [31:0] _RAND_8;
  reg  commandArgumentVec_0; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_9;
  reg  commandArgumentVec_1; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_10;
  reg  commandArgumentVec_2; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_11;
  reg  commandArgumentVec_3; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_12;
  reg  commandArgumentVec_4; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_13;
  reg  commandArgumentVec_5; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_14;
  reg  commandArgumentVec_6; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_15;
  reg  commandArgumentVec_7; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_16;
  reg  commandArgumentVec_8; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_17;
  reg  commandArgumentVec_9; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_18;
  reg  commandArgumentVec_10; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_19;
  reg  commandArgumentVec_11; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_20;
  reg  commandArgumentVec_12; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_21;
  reg  commandArgumentVec_13; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_22;
  reg  commandArgumentVec_14; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_23;
  reg  commandArgumentVec_15; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_24;
  reg  commandArgumentVec_16; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_25;
  reg  commandArgumentVec_17; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_26;
  reg  commandArgumentVec_18; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_27;
  reg  commandArgumentVec_19; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_28;
  reg  commandArgumentVec_20; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_29;
  reg  commandArgumentVec_21; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_30;
  reg  commandArgumentVec_22; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_31;
  reg  commandArgumentVec_23; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_32;
  reg  commandArgumentVec_24; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_33;
  reg  commandArgumentVec_25; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_34;
  reg  commandArgumentVec_26; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_35;
  reg  commandArgumentVec_27; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_36;
  reg  commandArgumentVec_28; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_37;
  reg  commandArgumentVec_29; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_38;
  reg  commandArgumentVec_30; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_39;
  reg  commandArgumentVec_31; // @[SpiReceiver.scala 49:33:@16.4]
  reg [31:0] _RAND_40;
  wire [2:0] _T_99; // @[SpiReceiver.scala 51:30:@18.4]
  wire [2:0] _T_101; // @[SpiReceiver.scala 51:30:@20.4]
  wire [5:0] _T_102; // @[SpiReceiver.scala 51:30:@21.4]
  wire [7:0] _T_109; // @[SpiReceiver.scala 52:46:@29.4]
  wire [15:0] _T_117; // @[SpiReceiver.scala 52:46:@37.4]
  wire [7:0] _T_124; // @[SpiReceiver.scala 52:46:@44.4]
  wire [15:0] _T_132; // @[SpiReceiver.scala 52:46:@52.4]
  reg  byteBuffer_0; // @[SpiReceiver.scala 54:25:@55.4]
  reg [31:0] _RAND_41;
  reg  byteBuffer_1; // @[SpiReceiver.scala 54:25:@55.4]
  reg [31:0] _RAND_42;
  reg  byteBuffer_2; // @[SpiReceiver.scala 54:25:@55.4]
  reg [31:0] _RAND_43;
  reg  byteBuffer_3; // @[SpiReceiver.scala 54:25:@55.4]
  reg [31:0] _RAND_44;
  reg  byteBuffer_4; // @[SpiReceiver.scala 54:25:@55.4]
  reg [31:0] _RAND_45;
  reg  byteBuffer_5; // @[SpiReceiver.scala 54:25:@55.4]
  reg [31:0] _RAND_46;
  reg  byteBuffer_6; // @[SpiReceiver.scala 54:25:@55.4]
  reg [31:0] _RAND_47;
  reg  byteBuffer_7; // @[SpiReceiver.scala 54:25:@55.4]
  reg [31:0] _RAND_48;
  reg [2:0] byteCounter; // @[SpiReceiver.scala 55:30:@56.4]
  reg [31:0] _RAND_49;
  wire [3:0] _T_153; // @[SpiReceiver.scala 61:32:@64.4]
  wire [3:0] _T_156; // @[SpiReceiver.scala 61:32:@67.4]
  reg  _T_159; // @[SpiReceiver.scala 22:44:@71.4]
  reg [31:0] _RAND_50;
  wire  _T_161; // @[SpiReceiver.scala 22:36:@73.4]
  wire  _T_162; // @[SpiReceiver.scala 22:33:@74.4]
  wire  _T_164; // @[SpiReceiver.scala 65:26:@76.6]
  wire  _T_165; // @[Conditional.scala 37:30:@78.8]
  wire  _T_166; // @[Conditional.scala 37:30:@83.10]
  wire  _T_169; // @[SpiReceiver.scala 72:40:@86.12]
  wire  _T_172; // @[SpiReceiver.scala 72:52:@88.12]
  wire [2:0] _GEN_0; // @[SpiReceiver.scala 72:81:@89.12]
  wire  _GEN_1; // @[SpiReceiver.scala 72:81:@89.12]
  wire  _GEN_2; // @[SpiReceiver.scala 72:81:@89.12]
  wire  _GEN_3; // @[SpiReceiver.scala 72:81:@89.12]
  wire  _GEN_4; // @[SpiReceiver.scala 72:81:@89.12]
  wire  _GEN_5; // @[SpiReceiver.scala 72:81:@89.12]
  wire  _GEN_6; // @[SpiReceiver.scala 72:81:@89.12]
  wire [7:0] _GEN_7; // @[SpiReceiver.scala 72:81:@89.12]
  wire  _T_186; // @[Conditional.scala 37:30:@101.12]
  wire  _T_188; // @[Conditional.scala 37:30:@103.14]
  wire  _T_206; // @[Conditional.scala 37:30:@115.16]
  wire  _T_224; // @[Conditional.scala 37:30:@127.18]
  wire  _T_242; // @[Conditional.scala 37:30:@139.20]
  wire  _GEN_8; // @[Conditional.scala 39:67:@140.20]
  wire  _GEN_9; // @[Conditional.scala 39:67:@140.20]
  wire  _GEN_10; // @[Conditional.scala 39:67:@140.20]
  wire  _GEN_11; // @[Conditional.scala 39:67:@140.20]
  wire  _GEN_12; // @[Conditional.scala 39:67:@140.20]
  wire  _GEN_13; // @[Conditional.scala 39:67:@140.20]
  wire  _GEN_14; // @[Conditional.scala 39:67:@140.20]
  wire  _GEN_15; // @[Conditional.scala 39:67:@140.20]
  wire  _GEN_16; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_17; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_18; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_19; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_20; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_21; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_22; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_23; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_24; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_25; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_26; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_27; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_28; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_29; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_30; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_31; // @[Conditional.scala 39:67:@128.18]
  wire  _GEN_32; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_33; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_34; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_35; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_36; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_37; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_38; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_39; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_40; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_41; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_42; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_43; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_44; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_45; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_46; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_47; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_48; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_49; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_50; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_51; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_52; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_53; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_54; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_55; // @[Conditional.scala 39:67:@116.16]
  wire  _GEN_56; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_57; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_58; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_59; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_60; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_61; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_62; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_63; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_64; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_65; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_66; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_67; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_68; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_69; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_70; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_71; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_72; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_73; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_74; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_75; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_76; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_77; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_78; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_79; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_80; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_81; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_82; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_83; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_84; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_85; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_86; // @[Conditional.scala 40:58:@104.14]
  wire  _GEN_87; // @[Conditional.scala 40:58:@104.14]
  wire [8:0] _T_260; // @[SpiReceiver.scala 98:40:@150.14]
  wire [7:0] _T_261; // @[SpiReceiver.scala 98:40:@151.14]
  wire  _T_263; // @[SpiReceiver.scala 99:34:@153.14]
  wire [2:0] _GEN_88; // @[SpiReceiver.scala 99:43:@154.14]
  wire [7:0] _GEN_89; // @[SpiReceiver.scala 99:43:@154.14]
  wire  _T_268; // @[Conditional.scala 37:30:@165.14]
  wire  _T_289; // @[SpiReceiver.scala 110:52:@180.16]
  wire [2:0] _T_290; // @[SpiReceiver.scala 110:33:@181.16]
  wire  _GEN_90; // @[Conditional.scala 39:67:@166.14]
  wire [2:0] _GEN_97; // @[Conditional.scala 39:67:@166.14]
  wire  _GEN_98; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_99; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_100; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_101; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_102; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_103; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_104; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_105; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_106; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_107; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_108; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_109; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_110; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_111; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_112; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_113; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_114; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_115; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_116; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_117; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_118; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_119; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_120; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_121; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_122; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_123; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_124; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_125; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_126; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_127; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_128; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_129; // @[Conditional.scala 39:67:@102.12]
  wire [7:0] _GEN_130; // @[Conditional.scala 39:67:@102.12]
  wire [2:0] _GEN_131; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_132; // @[Conditional.scala 39:67:@102.12]
  wire  _GEN_139; // @[Conditional.scala 39:67:@84.10]
  wire [2:0] _GEN_140; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_141; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_142; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_143; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_144; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_145; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_146; // @[Conditional.scala 39:67:@84.10]
  wire [7:0] _GEN_147; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_148; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_149; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_150; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_151; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_152; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_153; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_154; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_155; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_156; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_157; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_158; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_159; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_160; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_161; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_162; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_163; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_164; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_165; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_166; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_167; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_168; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_169; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_170; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_171; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_172; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_173; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_174; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_175; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_176; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_177; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_178; // @[Conditional.scala 39:67:@84.10]
  wire  _GEN_179; // @[Conditional.scala 39:67:@84.10]
  wire [2:0] _GEN_186; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_187; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_188; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_189; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_190; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_191; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_192; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_193; // @[Conditional.scala 40:58:@79.8]
  wire [7:0] _GEN_194; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_195; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_196; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_197; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_198; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_199; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_200; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_201; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_202; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_203; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_204; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_205; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_206; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_207; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_208; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_209; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_210; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_211; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_212; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_213; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_214; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_215; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_216; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_217; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_218; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_219; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_220; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_221; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_222; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_223; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_224; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_225; // @[Conditional.scala 40:58:@79.8]
  wire  _GEN_226; // @[Conditional.scala 40:58:@79.8]
  wire [2:0] _GEN_233; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_234; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_235; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_236; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_237; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_238; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_239; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_240; // @[SpiReceiver.scala 65:34:@77.6]
  wire [7:0] _GEN_241; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_242; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_243; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_244; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_245; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_246; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_247; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_248; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_249; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_250; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_251; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_252; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_253; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_254; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_255; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_256; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_257; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_258; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_259; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_260; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_261; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_262; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_263; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_264; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_265; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_266; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_267; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_268; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_269; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_270; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_271; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_272; // @[SpiReceiver.scala 65:34:@77.6]
  wire  _GEN_273; // @[SpiReceiver.scala 65:34:@77.6]
  wire [3:0] _T_292; // @[SpiReceiver.scala 117:32:@185.6]
  wire [2:0] _T_293; // @[SpiReceiver.scala 117:32:@186.6]
  wire  _GEN_280; // @[SpiReceiver.scala 117:39:@187.6]
  wire  _GEN_281; // @[SpiReceiver.scala 117:39:@187.6]
  wire  _GEN_282; // @[SpiReceiver.scala 117:39:@187.6]
  wire  _GEN_283; // @[SpiReceiver.scala 117:39:@187.6]
  wire  _GEN_284; // @[SpiReceiver.scala 117:39:@187.6]
  wire  _GEN_285; // @[SpiReceiver.scala 117:39:@187.6]
  wire  _GEN_286; // @[SpiReceiver.scala 117:39:@187.6]
  wire  _GEN_287; // @[SpiReceiver.scala 117:39:@187.6]
  wire [2:0] _GEN_288; // @[SpiReceiver.scala 64:34:@75.4]
  wire  _GEN_289; // @[SpiReceiver.scala 64:34:@75.4]
  wire [7:0] _GEN_296; // @[SpiReceiver.scala 64:34:@75.4]
  wire [2:0] _GEN_343; // @[SpiReceiver.scala 64:34:@75.4]
  assign _T_99 = {commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 51:30:@18.4]
  assign _T_101 = {commandVec_5,commandVec_4,commandVec_3}; // @[SpiReceiver.scala 51:30:@20.4]
  assign _T_102 = {commandVec_5,commandVec_4,commandVec_3,commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 51:30:@21.4]
  assign _T_109 = {commandArgumentVec_7,commandArgumentVec_6,commandArgumentVec_5,commandArgumentVec_4,commandArgumentVec_3,commandArgumentVec_2,commandArgumentVec_1,commandArgumentVec_0}; // @[SpiReceiver.scala 52:46:@29.4]
  assign _T_117 = {commandArgumentVec_15,commandArgumentVec_14,commandArgumentVec_13,commandArgumentVec_12,commandArgumentVec_11,commandArgumentVec_10,commandArgumentVec_9,commandArgumentVec_8,_T_109}; // @[SpiReceiver.scala 52:46:@37.4]
  assign _T_124 = {commandArgumentVec_23,commandArgumentVec_22,commandArgumentVec_21,commandArgumentVec_20,commandArgumentVec_19,commandArgumentVec_18,commandArgumentVec_17,commandArgumentVec_16}; // @[SpiReceiver.scala 52:46:@44.4]
  assign _T_132 = {commandArgumentVec_31,commandArgumentVec_30,commandArgumentVec_29,commandArgumentVec_28,commandArgumentVec_27,commandArgumentVec_26,commandArgumentVec_25,commandArgumentVec_24,_T_124}; // @[SpiReceiver.scala 52:46:@52.4]
  assign _T_153 = {byteBuffer_3,byteBuffer_2,byteBuffer_1,byteBuffer_0}; // @[SpiReceiver.scala 61:32:@64.4]
  assign _T_156 = {byteBuffer_7,byteBuffer_6,byteBuffer_5,byteBuffer_4}; // @[SpiReceiver.scala 61:32:@67.4]
  assign _T_161 = _T_159 == 1'h0; // @[SpiReceiver.scala 22:36:@73.4]
  assign _T_162 = io_SPI_CLK & _T_161; // @[SpiReceiver.scala 22:33:@74.4]
  assign _T_164 = byteCounter == 3'h7; // @[SpiReceiver.scala 65:26:@76.6]
  assign _T_165 = 3'h0 == state; // @[Conditional.scala 37:30:@78.8]
  assign _T_166 = 3'h1 == state; // @[Conditional.scala 37:30:@83.10]
  assign _T_169 = byteBuffer_0 == 1'h0; // @[SpiReceiver.scala 72:40:@86.12]
  assign _T_172 = _T_169 & byteBuffer_1; // @[SpiReceiver.scala 72:52:@88.12]
  assign _GEN_0 = _T_172 ? 3'h2 : state; // @[SpiReceiver.scala 72:81:@89.12]
  assign _GEN_1 = _T_172 ? byteBuffer_2 : commandVec_0; // @[SpiReceiver.scala 72:81:@89.12]
  assign _GEN_2 = _T_172 ? byteBuffer_3 : commandVec_1; // @[SpiReceiver.scala 72:81:@89.12]
  assign _GEN_3 = _T_172 ? byteBuffer_4 : commandVec_2; // @[SpiReceiver.scala 72:81:@89.12]
  assign _GEN_4 = _T_172 ? byteBuffer_5 : commandVec_3; // @[SpiReceiver.scala 72:81:@89.12]
  assign _GEN_5 = _T_172 ? byteBuffer_6 : commandVec_4; // @[SpiReceiver.scala 72:81:@89.12]
  assign _GEN_6 = _T_172 ? byteBuffer_7 : commandVec_5; // @[SpiReceiver.scala 72:81:@89.12]
  assign _GEN_7 = _T_172 ? 8'h0 : counter; // @[SpiReceiver.scala 72:81:@89.12]
  assign _T_186 = 3'h2 == state; // @[Conditional.scala 37:30:@101.12]
  assign _T_188 = 8'h0 == counter; // @[Conditional.scala 37:30:@103.14]
  assign _T_206 = 8'h1 == counter; // @[Conditional.scala 37:30:@115.16]
  assign _T_224 = 8'h2 == counter; // @[Conditional.scala 37:30:@127.18]
  assign _T_242 = 8'h3 == counter; // @[Conditional.scala 37:30:@139.20]
  assign _GEN_8 = _T_242 ? byteBuffer_0 : commandArgumentVec_24; // @[Conditional.scala 39:67:@140.20]
  assign _GEN_9 = _T_242 ? byteBuffer_1 : commandArgumentVec_25; // @[Conditional.scala 39:67:@140.20]
  assign _GEN_10 = _T_242 ? byteBuffer_2 : commandArgumentVec_26; // @[Conditional.scala 39:67:@140.20]
  assign _GEN_11 = _T_242 ? byteBuffer_3 : commandArgumentVec_27; // @[Conditional.scala 39:67:@140.20]
  assign _GEN_12 = _T_242 ? byteBuffer_4 : commandArgumentVec_28; // @[Conditional.scala 39:67:@140.20]
  assign _GEN_13 = _T_242 ? byteBuffer_5 : commandArgumentVec_29; // @[Conditional.scala 39:67:@140.20]
  assign _GEN_14 = _T_242 ? byteBuffer_6 : commandArgumentVec_30; // @[Conditional.scala 39:67:@140.20]
  assign _GEN_15 = _T_242 ? byteBuffer_7 : commandArgumentVec_31; // @[Conditional.scala 39:67:@140.20]
  assign _GEN_16 = _T_224 ? byteBuffer_0 : commandArgumentVec_16; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_17 = _T_224 ? byteBuffer_1 : commandArgumentVec_17; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_18 = _T_224 ? byteBuffer_2 : commandArgumentVec_18; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_19 = _T_224 ? byteBuffer_3 : commandArgumentVec_19; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_20 = _T_224 ? byteBuffer_4 : commandArgumentVec_20; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_21 = _T_224 ? byteBuffer_5 : commandArgumentVec_21; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_22 = _T_224 ? byteBuffer_6 : commandArgumentVec_22; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_23 = _T_224 ? byteBuffer_7 : commandArgumentVec_23; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_24 = _T_224 ? commandArgumentVec_24 : _GEN_8; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_25 = _T_224 ? commandArgumentVec_25 : _GEN_9; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_26 = _T_224 ? commandArgumentVec_26 : _GEN_10; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_27 = _T_224 ? commandArgumentVec_27 : _GEN_11; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_28 = _T_224 ? commandArgumentVec_28 : _GEN_12; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_29 = _T_224 ? commandArgumentVec_29 : _GEN_13; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_30 = _T_224 ? commandArgumentVec_30 : _GEN_14; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_31 = _T_224 ? commandArgumentVec_31 : _GEN_15; // @[Conditional.scala 39:67:@128.18]
  assign _GEN_32 = _T_206 ? byteBuffer_0 : commandArgumentVec_8; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_33 = _T_206 ? byteBuffer_1 : commandArgumentVec_9; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_34 = _T_206 ? byteBuffer_2 : commandArgumentVec_10; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_35 = _T_206 ? byteBuffer_3 : commandArgumentVec_11; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_36 = _T_206 ? byteBuffer_4 : commandArgumentVec_12; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_37 = _T_206 ? byteBuffer_5 : commandArgumentVec_13; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_38 = _T_206 ? byteBuffer_6 : commandArgumentVec_14; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_39 = _T_206 ? byteBuffer_7 : commandArgumentVec_15; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_40 = _T_206 ? commandArgumentVec_16 : _GEN_16; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_41 = _T_206 ? commandArgumentVec_17 : _GEN_17; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_42 = _T_206 ? commandArgumentVec_18 : _GEN_18; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_43 = _T_206 ? commandArgumentVec_19 : _GEN_19; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_44 = _T_206 ? commandArgumentVec_20 : _GEN_20; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_45 = _T_206 ? commandArgumentVec_21 : _GEN_21; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_46 = _T_206 ? commandArgumentVec_22 : _GEN_22; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_47 = _T_206 ? commandArgumentVec_23 : _GEN_23; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_48 = _T_206 ? commandArgumentVec_24 : _GEN_24; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_49 = _T_206 ? commandArgumentVec_25 : _GEN_25; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_50 = _T_206 ? commandArgumentVec_26 : _GEN_26; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_51 = _T_206 ? commandArgumentVec_27 : _GEN_27; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_52 = _T_206 ? commandArgumentVec_28 : _GEN_28; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_53 = _T_206 ? commandArgumentVec_29 : _GEN_29; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_54 = _T_206 ? commandArgumentVec_30 : _GEN_30; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_55 = _T_206 ? commandArgumentVec_31 : _GEN_31; // @[Conditional.scala 39:67:@116.16]
  assign _GEN_56 = _T_188 ? byteBuffer_0 : commandArgumentVec_0; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_57 = _T_188 ? byteBuffer_1 : commandArgumentVec_1; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_58 = _T_188 ? byteBuffer_2 : commandArgumentVec_2; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_59 = _T_188 ? byteBuffer_3 : commandArgumentVec_3; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_60 = _T_188 ? byteBuffer_4 : commandArgumentVec_4; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_61 = _T_188 ? byteBuffer_5 : commandArgumentVec_5; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_62 = _T_188 ? byteBuffer_6 : commandArgumentVec_6; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_63 = _T_188 ? byteBuffer_7 : commandArgumentVec_7; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_64 = _T_188 ? commandArgumentVec_8 : _GEN_32; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_65 = _T_188 ? commandArgumentVec_9 : _GEN_33; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_66 = _T_188 ? commandArgumentVec_10 : _GEN_34; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_67 = _T_188 ? commandArgumentVec_11 : _GEN_35; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_68 = _T_188 ? commandArgumentVec_12 : _GEN_36; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_69 = _T_188 ? commandArgumentVec_13 : _GEN_37; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_70 = _T_188 ? commandArgumentVec_14 : _GEN_38; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_71 = _T_188 ? commandArgumentVec_15 : _GEN_39; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_72 = _T_188 ? commandArgumentVec_16 : _GEN_40; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_73 = _T_188 ? commandArgumentVec_17 : _GEN_41; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_74 = _T_188 ? commandArgumentVec_18 : _GEN_42; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_75 = _T_188 ? commandArgumentVec_19 : _GEN_43; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_76 = _T_188 ? commandArgumentVec_20 : _GEN_44; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_77 = _T_188 ? commandArgumentVec_21 : _GEN_45; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_78 = _T_188 ? commandArgumentVec_22 : _GEN_46; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_79 = _T_188 ? commandArgumentVec_23 : _GEN_47; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_80 = _T_188 ? commandArgumentVec_24 : _GEN_48; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_81 = _T_188 ? commandArgumentVec_25 : _GEN_49; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_82 = _T_188 ? commandArgumentVec_26 : _GEN_50; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_83 = _T_188 ? commandArgumentVec_27 : _GEN_51; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_84 = _T_188 ? commandArgumentVec_28 : _GEN_52; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_85 = _T_188 ? commandArgumentVec_29 : _GEN_53; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_86 = _T_188 ? commandArgumentVec_30 : _GEN_54; // @[Conditional.scala 40:58:@104.14]
  assign _GEN_87 = _T_188 ? commandArgumentVec_31 : _GEN_55; // @[Conditional.scala 40:58:@104.14]
  assign _T_260 = counter + 8'h1; // @[SpiReceiver.scala 98:40:@150.14]
  assign _T_261 = counter + 8'h1; // @[SpiReceiver.scala 98:40:@151.14]
  assign _T_263 = counter == 8'h3; // @[SpiReceiver.scala 99:34:@153.14]
  assign _GEN_88 = _T_263 ? 3'h3 : state; // @[SpiReceiver.scala 99:43:@154.14]
  assign _GEN_89 = _T_263 ? 8'h0 : _T_261; // @[SpiReceiver.scala 99:43:@154.14]
  assign _T_268 = 3'h3 == state; // @[Conditional.scala 37:30:@165.14]
  assign _T_289 = _T_102 == 6'h18; // @[SpiReceiver.scala 110:52:@180.16]
  assign _T_290 = _T_289 ? 3'h4 : 3'h1; // @[SpiReceiver.scala 110:33:@181.16]
  assign _GEN_90 = _T_268 ? byteBuffer_7 : readSuccess; // @[Conditional.scala 39:67:@166.14]
  assign _GEN_97 = _T_268 ? _T_290 : state; // @[Conditional.scala 39:67:@166.14]
  assign _GEN_98 = _T_186 ? _GEN_56 : commandArgumentVec_0; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_99 = _T_186 ? _GEN_57 : commandArgumentVec_1; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_100 = _T_186 ? _GEN_58 : commandArgumentVec_2; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_101 = _T_186 ? _GEN_59 : commandArgumentVec_3; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_102 = _T_186 ? _GEN_60 : commandArgumentVec_4; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_103 = _T_186 ? _GEN_61 : commandArgumentVec_5; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_104 = _T_186 ? _GEN_62 : commandArgumentVec_6; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_105 = _T_186 ? _GEN_63 : commandArgumentVec_7; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_106 = _T_186 ? _GEN_64 : commandArgumentVec_8; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_107 = _T_186 ? _GEN_65 : commandArgumentVec_9; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_108 = _T_186 ? _GEN_66 : commandArgumentVec_10; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_109 = _T_186 ? _GEN_67 : commandArgumentVec_11; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_110 = _T_186 ? _GEN_68 : commandArgumentVec_12; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_111 = _T_186 ? _GEN_69 : commandArgumentVec_13; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_112 = _T_186 ? _GEN_70 : commandArgumentVec_14; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_113 = _T_186 ? _GEN_71 : commandArgumentVec_15; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_114 = _T_186 ? _GEN_72 : commandArgumentVec_16; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_115 = _T_186 ? _GEN_73 : commandArgumentVec_17; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_116 = _T_186 ? _GEN_74 : commandArgumentVec_18; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_117 = _T_186 ? _GEN_75 : commandArgumentVec_19; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_118 = _T_186 ? _GEN_76 : commandArgumentVec_20; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_119 = _T_186 ? _GEN_77 : commandArgumentVec_21; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_120 = _T_186 ? _GEN_78 : commandArgumentVec_22; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_121 = _T_186 ? _GEN_79 : commandArgumentVec_23; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_122 = _T_186 ? _GEN_80 : commandArgumentVec_24; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_123 = _T_186 ? _GEN_81 : commandArgumentVec_25; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_124 = _T_186 ? _GEN_82 : commandArgumentVec_26; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_125 = _T_186 ? _GEN_83 : commandArgumentVec_27; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_126 = _T_186 ? _GEN_84 : commandArgumentVec_28; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_127 = _T_186 ? _GEN_85 : commandArgumentVec_29; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_128 = _T_186 ? _GEN_86 : commandArgumentVec_30; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_129 = _T_186 ? _GEN_87 : commandArgumentVec_31; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_130 = _T_186 ? _GEN_89 : counter; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_131 = _T_186 ? _GEN_88 : _GEN_97; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_132 = _T_186 ? readSuccess : _GEN_90; // @[Conditional.scala 39:67:@102.12]
  assign _GEN_139 = _T_166 ? 1'h0 : _GEN_132; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_140 = _T_166 ? _GEN_0 : _GEN_131; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_141 = _T_166 ? _GEN_1 : commandVec_0; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_142 = _T_166 ? _GEN_2 : commandVec_1; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_143 = _T_166 ? _GEN_3 : commandVec_2; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_144 = _T_166 ? _GEN_4 : commandVec_3; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_145 = _T_166 ? _GEN_5 : commandVec_4; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_146 = _T_166 ? _GEN_6 : commandVec_5; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_147 = _T_166 ? _GEN_7 : _GEN_130; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_148 = _T_166 ? commandArgumentVec_0 : _GEN_98; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_149 = _T_166 ? commandArgumentVec_1 : _GEN_99; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_150 = _T_166 ? commandArgumentVec_2 : _GEN_100; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_151 = _T_166 ? commandArgumentVec_3 : _GEN_101; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_152 = _T_166 ? commandArgumentVec_4 : _GEN_102; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_153 = _T_166 ? commandArgumentVec_5 : _GEN_103; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_154 = _T_166 ? commandArgumentVec_6 : _GEN_104; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_155 = _T_166 ? commandArgumentVec_7 : _GEN_105; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_156 = _T_166 ? commandArgumentVec_8 : _GEN_106; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_157 = _T_166 ? commandArgumentVec_9 : _GEN_107; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_158 = _T_166 ? commandArgumentVec_10 : _GEN_108; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_159 = _T_166 ? commandArgumentVec_11 : _GEN_109; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_160 = _T_166 ? commandArgumentVec_12 : _GEN_110; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_161 = _T_166 ? commandArgumentVec_13 : _GEN_111; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_162 = _T_166 ? commandArgumentVec_14 : _GEN_112; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_163 = _T_166 ? commandArgumentVec_15 : _GEN_113; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_164 = _T_166 ? commandArgumentVec_16 : _GEN_114; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_165 = _T_166 ? commandArgumentVec_17 : _GEN_115; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_166 = _T_166 ? commandArgumentVec_18 : _GEN_116; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_167 = _T_166 ? commandArgumentVec_19 : _GEN_117; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_168 = _T_166 ? commandArgumentVec_20 : _GEN_118; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_169 = _T_166 ? commandArgumentVec_21 : _GEN_119; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_170 = _T_166 ? commandArgumentVec_22 : _GEN_120; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_171 = _T_166 ? commandArgumentVec_23 : _GEN_121; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_172 = _T_166 ? commandArgumentVec_24 : _GEN_122; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_173 = _T_166 ? commandArgumentVec_25 : _GEN_123; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_174 = _T_166 ? commandArgumentVec_26 : _GEN_124; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_175 = _T_166 ? commandArgumentVec_27 : _GEN_125; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_176 = _T_166 ? commandArgumentVec_28 : _GEN_126; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_177 = _T_166 ? commandArgumentVec_29 : _GEN_127; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_178 = _T_166 ? commandArgumentVec_30 : _GEN_128; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_179 = _T_166 ? commandArgumentVec_31 : _GEN_129; // @[Conditional.scala 39:67:@84.10]
  assign _GEN_186 = _T_165 ? 3'h1 : _GEN_140; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_187 = _T_165 ? readSuccess : _GEN_139; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_188 = _T_165 ? commandVec_0 : _GEN_141; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_189 = _T_165 ? commandVec_1 : _GEN_142; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_190 = _T_165 ? commandVec_2 : _GEN_143; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_191 = _T_165 ? commandVec_3 : _GEN_144; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_192 = _T_165 ? commandVec_4 : _GEN_145; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_193 = _T_165 ? commandVec_5 : _GEN_146; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_194 = _T_165 ? counter : _GEN_147; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_195 = _T_165 ? commandArgumentVec_0 : _GEN_148; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_196 = _T_165 ? commandArgumentVec_1 : _GEN_149; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_197 = _T_165 ? commandArgumentVec_2 : _GEN_150; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_198 = _T_165 ? commandArgumentVec_3 : _GEN_151; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_199 = _T_165 ? commandArgumentVec_4 : _GEN_152; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_200 = _T_165 ? commandArgumentVec_5 : _GEN_153; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_201 = _T_165 ? commandArgumentVec_6 : _GEN_154; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_202 = _T_165 ? commandArgumentVec_7 : _GEN_155; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_203 = _T_165 ? commandArgumentVec_8 : _GEN_156; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_204 = _T_165 ? commandArgumentVec_9 : _GEN_157; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_205 = _T_165 ? commandArgumentVec_10 : _GEN_158; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_206 = _T_165 ? commandArgumentVec_11 : _GEN_159; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_207 = _T_165 ? commandArgumentVec_12 : _GEN_160; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_208 = _T_165 ? commandArgumentVec_13 : _GEN_161; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_209 = _T_165 ? commandArgumentVec_14 : _GEN_162; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_210 = _T_165 ? commandArgumentVec_15 : _GEN_163; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_211 = _T_165 ? commandArgumentVec_16 : _GEN_164; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_212 = _T_165 ? commandArgumentVec_17 : _GEN_165; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_213 = _T_165 ? commandArgumentVec_18 : _GEN_166; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_214 = _T_165 ? commandArgumentVec_19 : _GEN_167; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_215 = _T_165 ? commandArgumentVec_20 : _GEN_168; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_216 = _T_165 ? commandArgumentVec_21 : _GEN_169; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_217 = _T_165 ? commandArgumentVec_22 : _GEN_170; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_218 = _T_165 ? commandArgumentVec_23 : _GEN_171; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_219 = _T_165 ? commandArgumentVec_24 : _GEN_172; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_220 = _T_165 ? commandArgumentVec_25 : _GEN_173; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_221 = _T_165 ? commandArgumentVec_26 : _GEN_174; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_222 = _T_165 ? commandArgumentVec_27 : _GEN_175; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_223 = _T_165 ? commandArgumentVec_28 : _GEN_176; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_224 = _T_165 ? commandArgumentVec_29 : _GEN_177; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_225 = _T_165 ? commandArgumentVec_30 : _GEN_178; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_226 = _T_165 ? commandArgumentVec_31 : _GEN_179; // @[Conditional.scala 40:58:@79.8]
  assign _GEN_233 = _T_164 ? _GEN_186 : state; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_234 = _T_164 ? _GEN_187 : readSuccess; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_235 = _T_164 ? _GEN_188 : commandVec_0; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_236 = _T_164 ? _GEN_189 : commandVec_1; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_237 = _T_164 ? _GEN_190 : commandVec_2; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_238 = _T_164 ? _GEN_191 : commandVec_3; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_239 = _T_164 ? _GEN_192 : commandVec_4; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_240 = _T_164 ? _GEN_193 : commandVec_5; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_241 = _T_164 ? _GEN_194 : counter; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_242 = _T_164 ? _GEN_195 : commandArgumentVec_0; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_243 = _T_164 ? _GEN_196 : commandArgumentVec_1; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_244 = _T_164 ? _GEN_197 : commandArgumentVec_2; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_245 = _T_164 ? _GEN_198 : commandArgumentVec_3; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_246 = _T_164 ? _GEN_199 : commandArgumentVec_4; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_247 = _T_164 ? _GEN_200 : commandArgumentVec_5; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_248 = _T_164 ? _GEN_201 : commandArgumentVec_6; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_249 = _T_164 ? _GEN_202 : commandArgumentVec_7; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_250 = _T_164 ? _GEN_203 : commandArgumentVec_8; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_251 = _T_164 ? _GEN_204 : commandArgumentVec_9; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_252 = _T_164 ? _GEN_205 : commandArgumentVec_10; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_253 = _T_164 ? _GEN_206 : commandArgumentVec_11; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_254 = _T_164 ? _GEN_207 : commandArgumentVec_12; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_255 = _T_164 ? _GEN_208 : commandArgumentVec_13; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_256 = _T_164 ? _GEN_209 : commandArgumentVec_14; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_257 = _T_164 ? _GEN_210 : commandArgumentVec_15; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_258 = _T_164 ? _GEN_211 : commandArgumentVec_16; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_259 = _T_164 ? _GEN_212 : commandArgumentVec_17; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_260 = _T_164 ? _GEN_213 : commandArgumentVec_18; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_261 = _T_164 ? _GEN_214 : commandArgumentVec_19; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_262 = _T_164 ? _GEN_215 : commandArgumentVec_20; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_263 = _T_164 ? _GEN_216 : commandArgumentVec_21; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_264 = _T_164 ? _GEN_217 : commandArgumentVec_22; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_265 = _T_164 ? _GEN_218 : commandArgumentVec_23; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_266 = _T_164 ? _GEN_219 : commandArgumentVec_24; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_267 = _T_164 ? _GEN_220 : commandArgumentVec_25; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_268 = _T_164 ? _GEN_221 : commandArgumentVec_26; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_269 = _T_164 ? _GEN_222 : commandArgumentVec_27; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_270 = _T_164 ? _GEN_223 : commandArgumentVec_28; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_271 = _T_164 ? _GEN_224 : commandArgumentVec_29; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_272 = _T_164 ? _GEN_225 : commandArgumentVec_30; // @[SpiReceiver.scala 65:34:@77.6]
  assign _GEN_273 = _T_164 ? _GEN_226 : commandArgumentVec_31; // @[SpiReceiver.scala 65:34:@77.6]
  assign _T_292 = byteCounter + 3'h1; // @[SpiReceiver.scala 117:32:@185.6]
  assign _T_293 = byteCounter + 3'h1; // @[SpiReceiver.scala 117:32:@186.6]
  assign _GEN_280 = 3'h0 == _T_293 ? io_SPI_DI : byteBuffer_0; // @[SpiReceiver.scala 117:39:@187.6]
  assign _GEN_281 = 3'h1 == _T_293 ? io_SPI_DI : byteBuffer_1; // @[SpiReceiver.scala 117:39:@187.6]
  assign _GEN_282 = 3'h2 == _T_293 ? io_SPI_DI : byteBuffer_2; // @[SpiReceiver.scala 117:39:@187.6]
  assign _GEN_283 = 3'h3 == _T_293 ? io_SPI_DI : byteBuffer_3; // @[SpiReceiver.scala 117:39:@187.6]
  assign _GEN_284 = 3'h4 == _T_293 ? io_SPI_DI : byteBuffer_4; // @[SpiReceiver.scala 117:39:@187.6]
  assign _GEN_285 = 3'h5 == _T_293 ? io_SPI_DI : byteBuffer_5; // @[SpiReceiver.scala 117:39:@187.6]
  assign _GEN_286 = 3'h6 == _T_293 ? io_SPI_DI : byteBuffer_6; // @[SpiReceiver.scala 117:39:@187.6]
  assign _GEN_287 = 3'h7 == _T_293 ? io_SPI_DI : byteBuffer_7; // @[SpiReceiver.scala 117:39:@187.6]
  assign _GEN_288 = _T_162 ? _GEN_233 : state; // @[SpiReceiver.scala 64:34:@75.4]
  assign _GEN_289 = _T_162 ? _GEN_234 : readSuccess; // @[SpiReceiver.scala 64:34:@75.4]
  assign _GEN_296 = _T_162 ? _GEN_241 : counter; // @[SpiReceiver.scala 64:34:@75.4]
  assign _GEN_343 = _T_162 ? _T_293 : byteCounter; // @[SpiReceiver.scala 64:34:@75.4]
  assign io_SPI_DO = io_DO; // @[SpiReceiver.scala 37:15:@9.4]
  assign io_DI = io_SPI_DI; // @[SpiReceiver.scala 36:11:@8.4]
  assign io_CommandReadFinished = state > 3'h1; // @[SpiReceiver.scala 57:28:@58.4]
  assign io_ArgumentReadFinished = state > 3'h2; // @[SpiReceiver.scala 58:29:@60.4]
  assign io_ReadSuccess = readSuccess; // @[SpiReceiver.scala 59:20:@61.4]
  assign io_Command = {_T_101,_T_99}; // @[SpiReceiver.scala 51:16:@22.4]
  assign io_CommandArgument = {_T_132,_T_117}; // @[SpiReceiver.scala 52:24:@54.4]
  assign io____counter = byteCounter; // @[SpiReceiver.scala 62:19:@70.4]
  assign io____state = state; // @[SpiReceiver.scala 41:17:@11.4]
  assign io____buffer = {_T_156,_T_153}; // @[SpiReceiver.scala 61:18:@69.4]
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  readSuccess = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  counter = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  commandVec_0 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  commandVec_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  commandVec_2 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  commandVec_3 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  commandVec_4 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  commandVec_5 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  commandArgumentVec_0 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  commandArgumentVec_1 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  commandArgumentVec_2 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  commandArgumentVec_3 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  commandArgumentVec_4 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  commandArgumentVec_5 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  commandArgumentVec_6 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  commandArgumentVec_7 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  commandArgumentVec_8 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  commandArgumentVec_9 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  commandArgumentVec_10 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  commandArgumentVec_11 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  commandArgumentVec_12 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  commandArgumentVec_13 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  commandArgumentVec_14 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  commandArgumentVec_15 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  commandArgumentVec_16 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  commandArgumentVec_17 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  commandArgumentVec_18 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  commandArgumentVec_19 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  commandArgumentVec_20 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  commandArgumentVec_21 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  commandArgumentVec_22 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  commandArgumentVec_23 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  commandArgumentVec_24 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  commandArgumentVec_25 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  commandArgumentVec_26 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  commandArgumentVec_27 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  commandArgumentVec_28 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  commandArgumentVec_29 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  commandArgumentVec_30 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  commandArgumentVec_31 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  byteBuffer_0 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  byteBuffer_1 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  byteBuffer_2 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  byteBuffer_3 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  byteBuffer_4 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  byteBuffer_5 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  byteBuffer_6 = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  byteBuffer_7 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  byteCounter = _RAND_49[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_159 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_162) begin
        if (_T_164) begin
          if (_T_165) begin
            state <= 3'h1;
          end else begin
            if (_T_166) begin
              if (_T_172) begin
                state <= 3'h2;
              end
            end else begin
              if (_T_186) begin
                if (_T_263) begin
                  state <= 3'h3;
                end
              end else begin
                if (_T_268) begin
                  if (_T_289) begin
                    state <= 3'h4;
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
    if (reset) begin
      readSuccess <= 1'h0;
    end else begin
      if (_T_162) begin
        if (_T_164) begin
          if (!(_T_165)) begin
            if (_T_166) begin
              readSuccess <= 1'h0;
            end else begin
              if (!(_T_186)) begin
                if (_T_268) begin
                  readSuccess <= byteBuffer_7;
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
      if (_T_162) begin
        if (_T_164) begin
          if (!(_T_165)) begin
            if (_T_166) begin
              if (_T_172) begin
                counter <= 8'h0;
              end
            end else begin
              if (_T_186) begin
                if (_T_263) begin
                  counter <= 8'h0;
                end else begin
                  counter <= _T_261;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (_T_166) begin
            if (_T_172) begin
              commandVec_0 <= byteBuffer_2;
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (_T_166) begin
            if (_T_172) begin
              commandVec_1 <= byteBuffer_3;
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (_T_166) begin
            if (_T_172) begin
              commandVec_2 <= byteBuffer_4;
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (_T_166) begin
            if (_T_172) begin
              commandVec_3 <= byteBuffer_5;
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (_T_166) begin
            if (_T_172) begin
              commandVec_4 <= byteBuffer_6;
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (_T_166) begin
            if (_T_172) begin
              commandVec_5 <= byteBuffer_7;
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (_T_188) begin
                commandArgumentVec_0 <= byteBuffer_0;
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (_T_188) begin
                commandArgumentVec_1 <= byteBuffer_1;
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (_T_188) begin
                commandArgumentVec_2 <= byteBuffer_2;
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (_T_188) begin
                commandArgumentVec_3 <= byteBuffer_3;
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (_T_188) begin
                commandArgumentVec_4 <= byteBuffer_4;
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (_T_188) begin
                commandArgumentVec_5 <= byteBuffer_5;
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (_T_188) begin
                commandArgumentVec_6 <= byteBuffer_6;
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (_T_188) begin
                commandArgumentVec_7 <= byteBuffer_7;
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (_T_206) begin
                  commandArgumentVec_8 <= byteBuffer_0;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (_T_206) begin
                  commandArgumentVec_9 <= byteBuffer_1;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (_T_206) begin
                  commandArgumentVec_10 <= byteBuffer_2;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (_T_206) begin
                  commandArgumentVec_11 <= byteBuffer_3;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (_T_206) begin
                  commandArgumentVec_12 <= byteBuffer_4;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (_T_206) begin
                  commandArgumentVec_13 <= byteBuffer_5;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (_T_206) begin
                  commandArgumentVec_14 <= byteBuffer_6;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (_T_206) begin
                  commandArgumentVec_15 <= byteBuffer_7;
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (_T_224) begin
                    commandArgumentVec_16 <= byteBuffer_0;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (_T_224) begin
                    commandArgumentVec_17 <= byteBuffer_1;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (_T_224) begin
                    commandArgumentVec_18 <= byteBuffer_2;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (_T_224) begin
                    commandArgumentVec_19 <= byteBuffer_3;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (_T_224) begin
                    commandArgumentVec_20 <= byteBuffer_4;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (_T_224) begin
                    commandArgumentVec_21 <= byteBuffer_5;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (_T_224) begin
                    commandArgumentVec_22 <= byteBuffer_6;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (_T_224) begin
                    commandArgumentVec_23 <= byteBuffer_7;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (!(_T_224)) begin
                    if (_T_242) begin
                      commandArgumentVec_24 <= byteBuffer_0;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (!(_T_224)) begin
                    if (_T_242) begin
                      commandArgumentVec_25 <= byteBuffer_1;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (!(_T_224)) begin
                    if (_T_242) begin
                      commandArgumentVec_26 <= byteBuffer_2;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (!(_T_224)) begin
                    if (_T_242) begin
                      commandArgumentVec_27 <= byteBuffer_3;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (!(_T_224)) begin
                    if (_T_242) begin
                      commandArgumentVec_28 <= byteBuffer_4;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (!(_T_224)) begin
                    if (_T_242) begin
                      commandArgumentVec_29 <= byteBuffer_5;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (!(_T_224)) begin
                    if (_T_242) begin
                      commandArgumentVec_30 <= byteBuffer_6;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (_T_164) begin
        if (!(_T_165)) begin
          if (!(_T_166)) begin
            if (_T_186) begin
              if (!(_T_188)) begin
                if (!(_T_206)) begin
                  if (!(_T_224)) begin
                    if (_T_242) begin
                      commandArgumentVec_31 <= byteBuffer_7;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_162) begin
      if (3'h0 == _T_293) begin
        byteBuffer_0 <= io_SPI_DI;
      end
    end
    if (_T_162) begin
      if (3'h1 == _T_293) begin
        byteBuffer_1 <= io_SPI_DI;
      end
    end
    if (_T_162) begin
      if (3'h2 == _T_293) begin
        byteBuffer_2 <= io_SPI_DI;
      end
    end
    if (_T_162) begin
      if (3'h3 == _T_293) begin
        byteBuffer_3 <= io_SPI_DI;
      end
    end
    if (_T_162) begin
      if (3'h4 == _T_293) begin
        byteBuffer_4 <= io_SPI_DI;
      end
    end
    if (_T_162) begin
      if (3'h5 == _T_293) begin
        byteBuffer_5 <= io_SPI_DI;
      end
    end
    if (_T_162) begin
      if (3'h6 == _T_293) begin
        byteBuffer_6 <= io_SPI_DI;
      end
    end
    if (_T_162) begin
      if (3'h7 == _T_293) begin
        byteBuffer_7 <= io_SPI_DI;
      end
    end
    if (reset) begin
      byteCounter <= 3'h0;
    end else begin
      if (_T_162) begin
        byteCounter <= _T_293;
      end
    end
    _T_159 <= io_SPI_CLK;
  end
endmodule
