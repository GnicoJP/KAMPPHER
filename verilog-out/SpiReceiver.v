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
  reg [2:0] _T_39; // @[SpiReceiver.scala 40:28:@10.4]
  reg [31:0] _RAND_0;
  reg  _T_55; // @[SpiReceiver.scala 44:34:@13.4]
  reg [31:0] _RAND_1;
  reg [7:0] _T_58; // @[SpiReceiver.scala 46:30:@14.4]
  reg [31:0] _RAND_2;
  reg  _T_62_0; // @[SpiReceiver.scala 48:29:@15.4]
  reg [31:0] _RAND_3;
  reg  _T_62_1; // @[SpiReceiver.scala 48:29:@15.4]
  reg [31:0] _RAND_4;
  reg  _T_62_2; // @[SpiReceiver.scala 48:29:@15.4]
  reg [31:0] _RAND_5;
  reg  _T_62_3; // @[SpiReceiver.scala 48:29:@15.4]
  reg [31:0] _RAND_6;
  reg  _T_62_4; // @[SpiReceiver.scala 48:29:@15.4]
  reg [31:0] _RAND_7;
  reg  _T_62_5; // @[SpiReceiver.scala 48:29:@15.4]
  reg [31:0] _RAND_8;
  reg  _T_74_0; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_9;
  reg  _T_74_1; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_10;
  reg  _T_74_2; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_11;
  reg  _T_74_3; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_12;
  reg  _T_74_4; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_13;
  reg  _T_74_5; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_14;
  reg  _T_74_6; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_15;
  reg  _T_74_7; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_16;
  reg  _T_74_8; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_17;
  reg  _T_74_9; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_18;
  reg  _T_74_10; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_19;
  reg  _T_74_11; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_20;
  reg  _T_74_12; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_21;
  reg  _T_74_13; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_22;
  reg  _T_74_14; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_23;
  reg  _T_74_15; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_24;
  reg  _T_74_16; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_25;
  reg  _T_74_17; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_26;
  reg  _T_74_18; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_27;
  reg  _T_74_19; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_28;
  reg  _T_74_20; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_29;
  reg  _T_74_21; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_30;
  reg  _T_74_22; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_31;
  reg  _T_74_23; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_32;
  reg  _T_74_24; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_33;
  reg  _T_74_25; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_34;
  reg  _T_74_26; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_35;
  reg  _T_74_27; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_36;
  reg  _T_74_28; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_37;
  reg  _T_74_29; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_38;
  reg  _T_74_30; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_39;
  reg  _T_74_31; // @[SpiReceiver.scala 49:37:@16.4]
  reg [31:0] _RAND_40;
  wire [2:0] _T_110; // @[SpiReceiver.scala 51:34:@18.4]
  wire [2:0] _T_112; // @[SpiReceiver.scala 51:34:@20.4]
  wire [5:0] _T_113; // @[SpiReceiver.scala 51:34:@21.4]
  wire [7:0] _T_120; // @[SpiReceiver.scala 52:50:@29.4]
  wire [15:0] _T_128; // @[SpiReceiver.scala 52:50:@37.4]
  wire [7:0] _T_135; // @[SpiReceiver.scala 52:50:@44.4]
  wire [15:0] _T_143; // @[SpiReceiver.scala 52:50:@52.4]
  reg  _T_148_0; // @[SpiReceiver.scala 54:29:@55.4]
  reg [31:0] _RAND_41;
  reg  _T_148_1; // @[SpiReceiver.scala 54:29:@55.4]
  reg [31:0] _RAND_42;
  reg  _T_148_2; // @[SpiReceiver.scala 54:29:@55.4]
  reg [31:0] _RAND_43;
  reg  _T_148_3; // @[SpiReceiver.scala 54:29:@55.4]
  reg [31:0] _RAND_44;
  reg  _T_148_4; // @[SpiReceiver.scala 54:29:@55.4]
  reg [31:0] _RAND_45;
  reg  _T_148_5; // @[SpiReceiver.scala 54:29:@55.4]
  reg [31:0] _RAND_46;
  reg  _T_148_6; // @[SpiReceiver.scala 54:29:@55.4]
  reg [31:0] _RAND_47;
  reg  _T_148_7; // @[SpiReceiver.scala 54:29:@55.4]
  reg [31:0] _RAND_48;
  reg [2:0] _T_161; // @[SpiReceiver.scala 55:34:@56.4]
  reg [31:0] _RAND_49;
  wire [3:0] _T_166; // @[SpiReceiver.scala 61:36:@64.4]
  wire [3:0] _T_169; // @[SpiReceiver.scala 61:36:@67.4]
  wire  _T_172; // @[SpiReceiver.scala 64:26:@71.4]
  wire  _T_173; // @[Conditional.scala 37:30:@73.6]
  wire  _T_174; // @[Conditional.scala 37:30:@78.8]
  wire  _T_177; // @[SpiReceiver.scala 71:40:@81.10]
  wire  _T_180; // @[SpiReceiver.scala 71:52:@83.10]
  wire [2:0] _GEN_0; // @[SpiReceiver.scala 71:81:@84.10]
  wire  _GEN_1; // @[SpiReceiver.scala 71:81:@84.10]
  wire  _GEN_2; // @[SpiReceiver.scala 71:81:@84.10]
  wire  _GEN_3; // @[SpiReceiver.scala 71:81:@84.10]
  wire  _GEN_4; // @[SpiReceiver.scala 71:81:@84.10]
  wire  _GEN_5; // @[SpiReceiver.scala 71:81:@84.10]
  wire  _GEN_6; // @[SpiReceiver.scala 71:81:@84.10]
  wire [7:0] _GEN_7; // @[SpiReceiver.scala 71:81:@84.10]
  wire  _T_194; // @[Conditional.scala 37:30:@96.10]
  wire  _T_196; // @[Conditional.scala 37:30:@98.12]
  wire  _T_214; // @[Conditional.scala 37:30:@110.14]
  wire  _T_232; // @[Conditional.scala 37:30:@122.16]
  wire  _T_250; // @[Conditional.scala 37:30:@134.18]
  wire  _GEN_8; // @[Conditional.scala 39:67:@135.18]
  wire  _GEN_9; // @[Conditional.scala 39:67:@135.18]
  wire  _GEN_10; // @[Conditional.scala 39:67:@135.18]
  wire  _GEN_11; // @[Conditional.scala 39:67:@135.18]
  wire  _GEN_12; // @[Conditional.scala 39:67:@135.18]
  wire  _GEN_13; // @[Conditional.scala 39:67:@135.18]
  wire  _GEN_14; // @[Conditional.scala 39:67:@135.18]
  wire  _GEN_15; // @[Conditional.scala 39:67:@135.18]
  wire  _GEN_16; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_17; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_18; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_19; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_20; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_21; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_22; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_23; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_24; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_25; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_26; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_27; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_28; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_29; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_30; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_31; // @[Conditional.scala 39:67:@123.16]
  wire  _GEN_32; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_33; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_34; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_35; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_36; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_37; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_38; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_39; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_40; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_41; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_42; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_43; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_44; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_45; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_46; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_47; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_48; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_49; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_50; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_51; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_52; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_53; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_54; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_55; // @[Conditional.scala 39:67:@111.14]
  wire  _GEN_56; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_57; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_58; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_59; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_60; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_61; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_62; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_63; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_64; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_65; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_66; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_67; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_68; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_69; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_70; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_71; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_72; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_73; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_74; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_75; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_76; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_77; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_78; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_79; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_80; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_81; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_82; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_83; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_84; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_85; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_86; // @[Conditional.scala 40:58:@99.12]
  wire  _GEN_87; // @[Conditional.scala 40:58:@99.12]
  wire [8:0] _T_268; // @[SpiReceiver.scala 97:40:@145.12]
  wire [7:0] _T_269; // @[SpiReceiver.scala 97:40:@146.12]
  wire  _T_271; // @[SpiReceiver.scala 98:34:@148.12]
  wire [2:0] _GEN_88; // @[SpiReceiver.scala 98:43:@149.12]
  wire [7:0] _GEN_89; // @[SpiReceiver.scala 98:43:@149.12]
  wire  _T_276; // @[Conditional.scala 37:30:@160.12]
  wire  _T_297; // @[SpiReceiver.scala 109:52:@175.14]
  wire [2:0] _T_298; // @[SpiReceiver.scala 109:33:@176.14]
  wire  _GEN_90; // @[Conditional.scala 39:67:@161.12]
  wire [2:0] _GEN_97; // @[Conditional.scala 39:67:@161.12]
  wire  _GEN_98; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_99; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_100; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_101; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_102; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_103; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_104; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_105; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_106; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_107; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_108; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_109; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_110; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_111; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_112; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_113; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_114; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_115; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_116; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_117; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_118; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_119; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_120; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_121; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_122; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_123; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_124; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_125; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_126; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_127; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_128; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_129; // @[Conditional.scala 39:67:@97.10]
  wire [7:0] _GEN_130; // @[Conditional.scala 39:67:@97.10]
  wire [2:0] _GEN_131; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_132; // @[Conditional.scala 39:67:@97.10]
  wire  _GEN_139; // @[Conditional.scala 39:67:@79.8]
  wire [2:0] _GEN_140; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_141; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_142; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_143; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_144; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_145; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_146; // @[Conditional.scala 39:67:@79.8]
  wire [7:0] _GEN_147; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_148; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_149; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_150; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_151; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_152; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_153; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_154; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_155; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_156; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_157; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_158; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_159; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_160; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_161; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_162; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_163; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_164; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_165; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_166; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_167; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_168; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_169; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_170; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_171; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_172; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_173; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_174; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_175; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_176; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_177; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_178; // @[Conditional.scala 39:67:@79.8]
  wire  _GEN_179; // @[Conditional.scala 39:67:@79.8]
  wire [2:0] _GEN_186; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_187; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_188; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_189; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_190; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_191; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_192; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_193; // @[Conditional.scala 40:58:@74.6]
  wire [7:0] _GEN_194; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_195; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_196; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_197; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_198; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_199; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_200; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_201; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_202; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_203; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_204; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_205; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_206; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_207; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_208; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_209; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_210; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_211; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_212; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_213; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_214; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_215; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_216; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_217; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_218; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_219; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_220; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_221; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_222; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_223; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_224; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_225; // @[Conditional.scala 40:58:@74.6]
  wire  _GEN_226; // @[Conditional.scala 40:58:@74.6]
  wire [2:0] _GEN_233; // @[SpiReceiver.scala 64:34:@72.4]
  wire  _GEN_234; // @[SpiReceiver.scala 64:34:@72.4]
  wire [7:0] _GEN_241; // @[SpiReceiver.scala 64:34:@72.4]
  wire [3:0] _T_300; // @[SpiReceiver.scala 116:32:@180.4]
  wire [2:0] _T_301; // @[SpiReceiver.scala 116:32:@181.4]
  assign _T_110 = {_T_62_2,_T_62_1,_T_62_0}; // @[SpiReceiver.scala 51:34:@18.4]
  assign _T_112 = {_T_62_5,_T_62_4,_T_62_3}; // @[SpiReceiver.scala 51:34:@20.4]
  assign _T_113 = {_T_62_5,_T_62_4,_T_62_3,_T_62_2,_T_62_1,_T_62_0}; // @[SpiReceiver.scala 51:34:@21.4]
  assign _T_120 = {_T_74_7,_T_74_6,_T_74_5,_T_74_4,_T_74_3,_T_74_2,_T_74_1,_T_74_0}; // @[SpiReceiver.scala 52:50:@29.4]
  assign _T_128 = {_T_74_15,_T_74_14,_T_74_13,_T_74_12,_T_74_11,_T_74_10,_T_74_9,_T_74_8,_T_120}; // @[SpiReceiver.scala 52:50:@37.4]
  assign _T_135 = {_T_74_23,_T_74_22,_T_74_21,_T_74_20,_T_74_19,_T_74_18,_T_74_17,_T_74_16}; // @[SpiReceiver.scala 52:50:@44.4]
  assign _T_143 = {_T_74_31,_T_74_30,_T_74_29,_T_74_28,_T_74_27,_T_74_26,_T_74_25,_T_74_24,_T_135}; // @[SpiReceiver.scala 52:50:@52.4]
  assign _T_166 = {_T_148_3,_T_148_2,_T_148_1,_T_148_0}; // @[SpiReceiver.scala 61:36:@64.4]
  assign _T_169 = {_T_148_7,_T_148_6,_T_148_5,_T_148_4}; // @[SpiReceiver.scala 61:36:@67.4]
  assign _T_172 = _T_161 == 3'h7; // @[SpiReceiver.scala 64:26:@71.4]
  assign _T_173 = 3'h0 == _T_39; // @[Conditional.scala 37:30:@73.6]
  assign _T_174 = 3'h1 == _T_39; // @[Conditional.scala 37:30:@78.8]
  assign _T_177 = _T_148_0 == 1'h0; // @[SpiReceiver.scala 71:40:@81.10]
  assign _T_180 = _T_177 & _T_148_1; // @[SpiReceiver.scala 71:52:@83.10]
  assign _GEN_0 = _T_180 ? 3'h2 : _T_39; // @[SpiReceiver.scala 71:81:@84.10]
  assign _GEN_1 = _T_180 ? _T_148_2 : _T_62_0; // @[SpiReceiver.scala 71:81:@84.10]
  assign _GEN_2 = _T_180 ? _T_148_3 : _T_62_1; // @[SpiReceiver.scala 71:81:@84.10]
  assign _GEN_3 = _T_180 ? _T_148_4 : _T_62_2; // @[SpiReceiver.scala 71:81:@84.10]
  assign _GEN_4 = _T_180 ? _T_148_5 : _T_62_3; // @[SpiReceiver.scala 71:81:@84.10]
  assign _GEN_5 = _T_180 ? _T_148_6 : _T_62_4; // @[SpiReceiver.scala 71:81:@84.10]
  assign _GEN_6 = _T_180 ? _T_148_7 : _T_62_5; // @[SpiReceiver.scala 71:81:@84.10]
  assign _GEN_7 = _T_180 ? 8'h0 : _T_58; // @[SpiReceiver.scala 71:81:@84.10]
  assign _T_194 = 3'h2 == _T_39; // @[Conditional.scala 37:30:@96.10]
  assign _T_196 = 8'h0 == _T_58; // @[Conditional.scala 37:30:@98.12]
  assign _T_214 = 8'h1 == _T_58; // @[Conditional.scala 37:30:@110.14]
  assign _T_232 = 8'h2 == _T_58; // @[Conditional.scala 37:30:@122.16]
  assign _T_250 = 8'h3 == _T_58; // @[Conditional.scala 37:30:@134.18]
  assign _GEN_8 = _T_250 ? _T_148_0 : _T_74_24; // @[Conditional.scala 39:67:@135.18]
  assign _GEN_9 = _T_250 ? _T_148_1 : _T_74_25; // @[Conditional.scala 39:67:@135.18]
  assign _GEN_10 = _T_250 ? _T_148_2 : _T_74_26; // @[Conditional.scala 39:67:@135.18]
  assign _GEN_11 = _T_250 ? _T_148_3 : _T_74_27; // @[Conditional.scala 39:67:@135.18]
  assign _GEN_12 = _T_250 ? _T_148_4 : _T_74_28; // @[Conditional.scala 39:67:@135.18]
  assign _GEN_13 = _T_250 ? _T_148_5 : _T_74_29; // @[Conditional.scala 39:67:@135.18]
  assign _GEN_14 = _T_250 ? _T_148_6 : _T_74_30; // @[Conditional.scala 39:67:@135.18]
  assign _GEN_15 = _T_250 ? _T_148_7 : _T_74_31; // @[Conditional.scala 39:67:@135.18]
  assign _GEN_16 = _T_232 ? _T_148_0 : _T_74_16; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_17 = _T_232 ? _T_148_1 : _T_74_17; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_18 = _T_232 ? _T_148_2 : _T_74_18; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_19 = _T_232 ? _T_148_3 : _T_74_19; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_20 = _T_232 ? _T_148_4 : _T_74_20; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_21 = _T_232 ? _T_148_5 : _T_74_21; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_22 = _T_232 ? _T_148_6 : _T_74_22; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_23 = _T_232 ? _T_148_7 : _T_74_23; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_24 = _T_232 ? _T_74_24 : _GEN_8; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_25 = _T_232 ? _T_74_25 : _GEN_9; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_26 = _T_232 ? _T_74_26 : _GEN_10; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_27 = _T_232 ? _T_74_27 : _GEN_11; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_28 = _T_232 ? _T_74_28 : _GEN_12; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_29 = _T_232 ? _T_74_29 : _GEN_13; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_30 = _T_232 ? _T_74_30 : _GEN_14; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_31 = _T_232 ? _T_74_31 : _GEN_15; // @[Conditional.scala 39:67:@123.16]
  assign _GEN_32 = _T_214 ? _T_148_0 : _T_74_8; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_33 = _T_214 ? _T_148_1 : _T_74_9; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_34 = _T_214 ? _T_148_2 : _T_74_10; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_35 = _T_214 ? _T_148_3 : _T_74_11; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_36 = _T_214 ? _T_148_4 : _T_74_12; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_37 = _T_214 ? _T_148_5 : _T_74_13; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_38 = _T_214 ? _T_148_6 : _T_74_14; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_39 = _T_214 ? _T_148_7 : _T_74_15; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_40 = _T_214 ? _T_74_16 : _GEN_16; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_41 = _T_214 ? _T_74_17 : _GEN_17; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_42 = _T_214 ? _T_74_18 : _GEN_18; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_43 = _T_214 ? _T_74_19 : _GEN_19; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_44 = _T_214 ? _T_74_20 : _GEN_20; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_45 = _T_214 ? _T_74_21 : _GEN_21; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_46 = _T_214 ? _T_74_22 : _GEN_22; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_47 = _T_214 ? _T_74_23 : _GEN_23; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_48 = _T_214 ? _T_74_24 : _GEN_24; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_49 = _T_214 ? _T_74_25 : _GEN_25; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_50 = _T_214 ? _T_74_26 : _GEN_26; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_51 = _T_214 ? _T_74_27 : _GEN_27; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_52 = _T_214 ? _T_74_28 : _GEN_28; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_53 = _T_214 ? _T_74_29 : _GEN_29; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_54 = _T_214 ? _T_74_30 : _GEN_30; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_55 = _T_214 ? _T_74_31 : _GEN_31; // @[Conditional.scala 39:67:@111.14]
  assign _GEN_56 = _T_196 ? _T_148_0 : _T_74_0; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_57 = _T_196 ? _T_148_1 : _T_74_1; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_58 = _T_196 ? _T_148_2 : _T_74_2; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_59 = _T_196 ? _T_148_3 : _T_74_3; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_60 = _T_196 ? _T_148_4 : _T_74_4; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_61 = _T_196 ? _T_148_5 : _T_74_5; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_62 = _T_196 ? _T_148_6 : _T_74_6; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_63 = _T_196 ? _T_148_7 : _T_74_7; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_64 = _T_196 ? _T_74_8 : _GEN_32; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_65 = _T_196 ? _T_74_9 : _GEN_33; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_66 = _T_196 ? _T_74_10 : _GEN_34; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_67 = _T_196 ? _T_74_11 : _GEN_35; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_68 = _T_196 ? _T_74_12 : _GEN_36; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_69 = _T_196 ? _T_74_13 : _GEN_37; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_70 = _T_196 ? _T_74_14 : _GEN_38; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_71 = _T_196 ? _T_74_15 : _GEN_39; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_72 = _T_196 ? _T_74_16 : _GEN_40; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_73 = _T_196 ? _T_74_17 : _GEN_41; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_74 = _T_196 ? _T_74_18 : _GEN_42; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_75 = _T_196 ? _T_74_19 : _GEN_43; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_76 = _T_196 ? _T_74_20 : _GEN_44; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_77 = _T_196 ? _T_74_21 : _GEN_45; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_78 = _T_196 ? _T_74_22 : _GEN_46; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_79 = _T_196 ? _T_74_23 : _GEN_47; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_80 = _T_196 ? _T_74_24 : _GEN_48; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_81 = _T_196 ? _T_74_25 : _GEN_49; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_82 = _T_196 ? _T_74_26 : _GEN_50; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_83 = _T_196 ? _T_74_27 : _GEN_51; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_84 = _T_196 ? _T_74_28 : _GEN_52; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_85 = _T_196 ? _T_74_29 : _GEN_53; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_86 = _T_196 ? _T_74_30 : _GEN_54; // @[Conditional.scala 40:58:@99.12]
  assign _GEN_87 = _T_196 ? _T_74_31 : _GEN_55; // @[Conditional.scala 40:58:@99.12]
  assign _T_268 = _T_58 + 8'h1; // @[SpiReceiver.scala 97:40:@145.12]
  assign _T_269 = _T_58 + 8'h1; // @[SpiReceiver.scala 97:40:@146.12]
  assign _T_271 = _T_58 == 8'h3; // @[SpiReceiver.scala 98:34:@148.12]
  assign _GEN_88 = _T_271 ? 3'h3 : _T_39; // @[SpiReceiver.scala 98:43:@149.12]
  assign _GEN_89 = _T_271 ? 8'h0 : _T_269; // @[SpiReceiver.scala 98:43:@149.12]
  assign _T_276 = 3'h3 == _T_39; // @[Conditional.scala 37:30:@160.12]
  assign _T_297 = _T_113 == 6'h18; // @[SpiReceiver.scala 109:52:@175.14]
  assign _T_298 = _T_297 ? 3'h4 : 3'h1; // @[SpiReceiver.scala 109:33:@176.14]
  assign _GEN_90 = _T_276 ? _T_148_7 : _T_55; // @[Conditional.scala 39:67:@161.12]
  assign _GEN_97 = _T_276 ? _T_298 : _T_39; // @[Conditional.scala 39:67:@161.12]
  assign _GEN_98 = _T_194 ? _GEN_56 : _T_74_0; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_99 = _T_194 ? _GEN_57 : _T_74_1; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_100 = _T_194 ? _GEN_58 : _T_74_2; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_101 = _T_194 ? _GEN_59 : _T_74_3; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_102 = _T_194 ? _GEN_60 : _T_74_4; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_103 = _T_194 ? _GEN_61 : _T_74_5; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_104 = _T_194 ? _GEN_62 : _T_74_6; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_105 = _T_194 ? _GEN_63 : _T_74_7; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_106 = _T_194 ? _GEN_64 : _T_74_8; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_107 = _T_194 ? _GEN_65 : _T_74_9; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_108 = _T_194 ? _GEN_66 : _T_74_10; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_109 = _T_194 ? _GEN_67 : _T_74_11; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_110 = _T_194 ? _GEN_68 : _T_74_12; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_111 = _T_194 ? _GEN_69 : _T_74_13; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_112 = _T_194 ? _GEN_70 : _T_74_14; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_113 = _T_194 ? _GEN_71 : _T_74_15; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_114 = _T_194 ? _GEN_72 : _T_74_16; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_115 = _T_194 ? _GEN_73 : _T_74_17; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_116 = _T_194 ? _GEN_74 : _T_74_18; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_117 = _T_194 ? _GEN_75 : _T_74_19; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_118 = _T_194 ? _GEN_76 : _T_74_20; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_119 = _T_194 ? _GEN_77 : _T_74_21; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_120 = _T_194 ? _GEN_78 : _T_74_22; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_121 = _T_194 ? _GEN_79 : _T_74_23; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_122 = _T_194 ? _GEN_80 : _T_74_24; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_123 = _T_194 ? _GEN_81 : _T_74_25; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_124 = _T_194 ? _GEN_82 : _T_74_26; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_125 = _T_194 ? _GEN_83 : _T_74_27; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_126 = _T_194 ? _GEN_84 : _T_74_28; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_127 = _T_194 ? _GEN_85 : _T_74_29; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_128 = _T_194 ? _GEN_86 : _T_74_30; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_129 = _T_194 ? _GEN_87 : _T_74_31; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_130 = _T_194 ? _GEN_89 : _T_58; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_131 = _T_194 ? _GEN_88 : _GEN_97; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_132 = _T_194 ? _T_55 : _GEN_90; // @[Conditional.scala 39:67:@97.10]
  assign _GEN_139 = _T_174 ? 1'h0 : _GEN_132; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_140 = _T_174 ? _GEN_0 : _GEN_131; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_141 = _T_174 ? _GEN_1 : _T_62_0; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_142 = _T_174 ? _GEN_2 : _T_62_1; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_143 = _T_174 ? _GEN_3 : _T_62_2; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_144 = _T_174 ? _GEN_4 : _T_62_3; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_145 = _T_174 ? _GEN_5 : _T_62_4; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_146 = _T_174 ? _GEN_6 : _T_62_5; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_147 = _T_174 ? _GEN_7 : _GEN_130; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_148 = _T_174 ? _T_74_0 : _GEN_98; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_149 = _T_174 ? _T_74_1 : _GEN_99; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_150 = _T_174 ? _T_74_2 : _GEN_100; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_151 = _T_174 ? _T_74_3 : _GEN_101; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_152 = _T_174 ? _T_74_4 : _GEN_102; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_153 = _T_174 ? _T_74_5 : _GEN_103; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_154 = _T_174 ? _T_74_6 : _GEN_104; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_155 = _T_174 ? _T_74_7 : _GEN_105; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_156 = _T_174 ? _T_74_8 : _GEN_106; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_157 = _T_174 ? _T_74_9 : _GEN_107; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_158 = _T_174 ? _T_74_10 : _GEN_108; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_159 = _T_174 ? _T_74_11 : _GEN_109; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_160 = _T_174 ? _T_74_12 : _GEN_110; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_161 = _T_174 ? _T_74_13 : _GEN_111; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_162 = _T_174 ? _T_74_14 : _GEN_112; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_163 = _T_174 ? _T_74_15 : _GEN_113; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_164 = _T_174 ? _T_74_16 : _GEN_114; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_165 = _T_174 ? _T_74_17 : _GEN_115; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_166 = _T_174 ? _T_74_18 : _GEN_116; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_167 = _T_174 ? _T_74_19 : _GEN_117; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_168 = _T_174 ? _T_74_20 : _GEN_118; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_169 = _T_174 ? _T_74_21 : _GEN_119; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_170 = _T_174 ? _T_74_22 : _GEN_120; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_171 = _T_174 ? _T_74_23 : _GEN_121; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_172 = _T_174 ? _T_74_24 : _GEN_122; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_173 = _T_174 ? _T_74_25 : _GEN_123; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_174 = _T_174 ? _T_74_26 : _GEN_124; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_175 = _T_174 ? _T_74_27 : _GEN_125; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_176 = _T_174 ? _T_74_28 : _GEN_126; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_177 = _T_174 ? _T_74_29 : _GEN_127; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_178 = _T_174 ? _T_74_30 : _GEN_128; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_179 = _T_174 ? _T_74_31 : _GEN_129; // @[Conditional.scala 39:67:@79.8]
  assign _GEN_186 = _T_173 ? 3'h1 : _GEN_140; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_187 = _T_173 ? _T_55 : _GEN_139; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_188 = _T_173 ? _T_62_0 : _GEN_141; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_189 = _T_173 ? _T_62_1 : _GEN_142; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_190 = _T_173 ? _T_62_2 : _GEN_143; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_191 = _T_173 ? _T_62_3 : _GEN_144; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_192 = _T_173 ? _T_62_4 : _GEN_145; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_193 = _T_173 ? _T_62_5 : _GEN_146; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_194 = _T_173 ? _T_58 : _GEN_147; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_195 = _T_173 ? _T_74_0 : _GEN_148; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_196 = _T_173 ? _T_74_1 : _GEN_149; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_197 = _T_173 ? _T_74_2 : _GEN_150; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_198 = _T_173 ? _T_74_3 : _GEN_151; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_199 = _T_173 ? _T_74_4 : _GEN_152; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_200 = _T_173 ? _T_74_5 : _GEN_153; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_201 = _T_173 ? _T_74_6 : _GEN_154; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_202 = _T_173 ? _T_74_7 : _GEN_155; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_203 = _T_173 ? _T_74_8 : _GEN_156; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_204 = _T_173 ? _T_74_9 : _GEN_157; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_205 = _T_173 ? _T_74_10 : _GEN_158; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_206 = _T_173 ? _T_74_11 : _GEN_159; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_207 = _T_173 ? _T_74_12 : _GEN_160; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_208 = _T_173 ? _T_74_13 : _GEN_161; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_209 = _T_173 ? _T_74_14 : _GEN_162; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_210 = _T_173 ? _T_74_15 : _GEN_163; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_211 = _T_173 ? _T_74_16 : _GEN_164; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_212 = _T_173 ? _T_74_17 : _GEN_165; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_213 = _T_173 ? _T_74_18 : _GEN_166; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_214 = _T_173 ? _T_74_19 : _GEN_167; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_215 = _T_173 ? _T_74_20 : _GEN_168; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_216 = _T_173 ? _T_74_21 : _GEN_169; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_217 = _T_173 ? _T_74_22 : _GEN_170; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_218 = _T_173 ? _T_74_23 : _GEN_171; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_219 = _T_173 ? _T_74_24 : _GEN_172; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_220 = _T_173 ? _T_74_25 : _GEN_173; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_221 = _T_173 ? _T_74_26 : _GEN_174; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_222 = _T_173 ? _T_74_27 : _GEN_175; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_223 = _T_173 ? _T_74_28 : _GEN_176; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_224 = _T_173 ? _T_74_29 : _GEN_177; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_225 = _T_173 ? _T_74_30 : _GEN_178; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_226 = _T_173 ? _T_74_31 : _GEN_179; // @[Conditional.scala 40:58:@74.6]
  assign _GEN_233 = _T_172 ? _GEN_186 : _T_39; // @[SpiReceiver.scala 64:34:@72.4]
  assign _GEN_234 = _T_172 ? _GEN_187 : _T_55; // @[SpiReceiver.scala 64:34:@72.4]
  assign _GEN_241 = _T_172 ? _GEN_194 : _T_58; // @[SpiReceiver.scala 64:34:@72.4]
  assign _T_300 = _T_161 + 3'h1; // @[SpiReceiver.scala 116:32:@180.4]
  assign _T_301 = _T_161 + 3'h1; // @[SpiReceiver.scala 116:32:@181.4]
  assign io_SPI_DO = io_DO; // @[SpiReceiver.scala 36:15:@9.4]
  assign io_DI = io_SPI_DI; // @[SpiReceiver.scala 35:11:@8.4]
  assign io_CommandReadFinished = _T_39 > 3'h1; // @[SpiReceiver.scala 57:32:@58.4]
  assign io_ArgumentReadFinished = _T_39 > 3'h2; // @[SpiReceiver.scala 58:33:@60.4]
  assign io_ReadSuccess = _T_55; // @[SpiReceiver.scala 59:24:@61.4]
  assign io_Command = {_T_112,_T_110}; // @[SpiReceiver.scala 51:20:@22.4]
  assign io_CommandArgument = {_T_143,_T_128}; // @[SpiReceiver.scala 52:28:@54.4]
  assign io____counter = _T_161; // @[SpiReceiver.scala 62:23:@70.4]
  assign io____state = _T_39; // @[SpiReceiver.scala 41:21:@11.4]
  assign io____buffer = {_T_169,_T_166}; // @[SpiReceiver.scala 61:22:@69.4]
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
  _T_39 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_55 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_58 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_62_0 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_62_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_62_2 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_62_3 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_62_4 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_62_5 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_74_0 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_74_1 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_74_2 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_74_3 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_74_4 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_74_5 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_74_6 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_74_7 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_74_8 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_74_9 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_74_10 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_74_11 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_74_12 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_74_13 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_74_14 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_74_15 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_74_16 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_74_17 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_74_18 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_74_19 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_74_20 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_74_21 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_74_22 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_74_23 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_74_24 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_74_25 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_74_26 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_74_27 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_74_28 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_74_29 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_74_30 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_74_31 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_148_0 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_148_1 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_148_2 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_148_3 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_148_4 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_148_5 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_148_6 = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_148_7 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_161 = _RAND_49[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_SPI_CLK) begin
    if (reset) begin
      _T_39 <= 3'h0;
    end else begin
      if (_T_172) begin
        if (_T_173) begin
          _T_39 <= 3'h1;
        end else begin
          if (_T_174) begin
            if (_T_180) begin
              _T_39 <= 3'h2;
            end
          end else begin
            if (_T_194) begin
              if (_T_271) begin
                _T_39 <= 3'h3;
              end
            end else begin
              if (_T_276) begin
                if (_T_297) begin
                  _T_39 <= 3'h4;
                end else begin
                  _T_39 <= 3'h1;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      _T_55 <= 1'h0;
    end else begin
      if (_T_172) begin
        if (!(_T_173)) begin
          if (_T_174) begin
            _T_55 <= 1'h0;
          end else begin
            if (!(_T_194)) begin
              if (_T_276) begin
                _T_55 <= _T_148_7;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      _T_58 <= 8'h0;
    end else begin
      if (_T_172) begin
        if (!(_T_173)) begin
          if (_T_174) begin
            if (_T_180) begin
              _T_58 <= 8'h0;
            end
          end else begin
            if (_T_194) begin
              if (_T_271) begin
                _T_58 <= 8'h0;
              end else begin
                _T_58 <= _T_269;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (_T_174) begin
          if (_T_180) begin
            _T_62_0 <= _T_148_2;
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (_T_174) begin
          if (_T_180) begin
            _T_62_1 <= _T_148_3;
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (_T_174) begin
          if (_T_180) begin
            _T_62_2 <= _T_148_4;
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (_T_174) begin
          if (_T_180) begin
            _T_62_3 <= _T_148_5;
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (_T_174) begin
          if (_T_180) begin
            _T_62_4 <= _T_148_6;
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (_T_174) begin
          if (_T_180) begin
            _T_62_5 <= _T_148_7;
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (_T_196) begin
              _T_74_0 <= _T_148_0;
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (_T_196) begin
              _T_74_1 <= _T_148_1;
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (_T_196) begin
              _T_74_2 <= _T_148_2;
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (_T_196) begin
              _T_74_3 <= _T_148_3;
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (_T_196) begin
              _T_74_4 <= _T_148_4;
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (_T_196) begin
              _T_74_5 <= _T_148_5;
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (_T_196) begin
              _T_74_6 <= _T_148_6;
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (_T_196) begin
              _T_74_7 <= _T_148_7;
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (_T_214) begin
                _T_74_8 <= _T_148_0;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (_T_214) begin
                _T_74_9 <= _T_148_1;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (_T_214) begin
                _T_74_10 <= _T_148_2;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (_T_214) begin
                _T_74_11 <= _T_148_3;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (_T_214) begin
                _T_74_12 <= _T_148_4;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (_T_214) begin
                _T_74_13 <= _T_148_5;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (_T_214) begin
                _T_74_14 <= _T_148_6;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (_T_214) begin
                _T_74_15 <= _T_148_7;
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (_T_232) begin
                  _T_74_16 <= _T_148_0;
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (_T_232) begin
                  _T_74_17 <= _T_148_1;
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (_T_232) begin
                  _T_74_18 <= _T_148_2;
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (_T_232) begin
                  _T_74_19 <= _T_148_3;
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (_T_232) begin
                  _T_74_20 <= _T_148_4;
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (_T_232) begin
                  _T_74_21 <= _T_148_5;
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (_T_232) begin
                  _T_74_22 <= _T_148_6;
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (_T_232) begin
                  _T_74_23 <= _T_148_7;
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (!(_T_232)) begin
                  if (_T_250) begin
                    _T_74_24 <= _T_148_0;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (!(_T_232)) begin
                  if (_T_250) begin
                    _T_74_25 <= _T_148_1;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (!(_T_232)) begin
                  if (_T_250) begin
                    _T_74_26 <= _T_148_2;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (!(_T_232)) begin
                  if (_T_250) begin
                    _T_74_27 <= _T_148_3;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (!(_T_232)) begin
                  if (_T_250) begin
                    _T_74_28 <= _T_148_4;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (!(_T_232)) begin
                  if (_T_250) begin
                    _T_74_29 <= _T_148_5;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (!(_T_232)) begin
                  if (_T_250) begin
                    _T_74_30 <= _T_148_6;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_172) begin
      if (!(_T_173)) begin
        if (!(_T_174)) begin
          if (_T_194) begin
            if (!(_T_196)) begin
              if (!(_T_214)) begin
                if (!(_T_232)) begin
                  if (_T_250) begin
                    _T_74_31 <= _T_148_7;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (3'h0 == _T_301) begin
      _T_148_0 <= io_SPI_DI;
    end
    if (3'h1 == _T_301) begin
      _T_148_1 <= io_SPI_DI;
    end
    if (3'h2 == _T_301) begin
      _T_148_2 <= io_SPI_DI;
    end
    if (3'h3 == _T_301) begin
      _T_148_3 <= io_SPI_DI;
    end
    if (3'h4 == _T_301) begin
      _T_148_4 <= io_SPI_DI;
    end
    if (3'h5 == _T_301) begin
      _T_148_5 <= io_SPI_DI;
    end
    if (3'h6 == _T_301) begin
      _T_148_6 <= io_SPI_DI;
    end
    if (3'h7 == _T_301) begin
      _T_148_7 <= io_SPI_DI;
    end
    if (reset) begin
      _T_161 <= 3'h0;
    end else begin
      _T_161 <= _T_301;
    end
  end
endmodule
