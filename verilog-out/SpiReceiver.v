module SpiReceiver( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [7:0]  io_InputBuffer, // @[:@6.4]
  input         io_BufferChanged, // @[:@6.4]
  input  [7:0]  io_DataBlockSize, // @[:@6.4]
  output        io_CommandReadFinished, // @[:@6.4]
  output        io_ArgumentReadFinished, // @[:@6.4]
  output        io_ReadSuccess, // @[:@6.4]
  output [5:0]  io_Command, // @[:@6.4]
  output [31:0] io_CommandArgument, // @[:@6.4]
  output [2:0]  io____state // @[:@6.4]
);
  reg  writestate_isSingle; // @[SpiReceiver.scala 26:34:@8.4]
  reg [31:0] _RAND_0;
  reg [2:0] state; // @[SpiReceiver.scala 27:24:@9.4]
  reg [31:0] _RAND_1;
  reg [1:0] writestate; // @[SpiReceiver.scala 28:29:@10.4]
  reg [31:0] _RAND_2;
  reg  readSuccess; // @[SpiReceiver.scala 32:30:@13.4]
  reg [31:0] _RAND_3;
  reg  commandVec_0; // @[SpiReceiver.scala 34:25:@14.4]
  reg [31:0] _RAND_4;
  reg  commandVec_1; // @[SpiReceiver.scala 34:25:@14.4]
  reg [31:0] _RAND_5;
  reg  commandVec_2; // @[SpiReceiver.scala 34:25:@14.4]
  reg [31:0] _RAND_6;
  reg  commandVec_3; // @[SpiReceiver.scala 34:25:@14.4]
  reg [31:0] _RAND_7;
  reg  commandVec_4; // @[SpiReceiver.scala 34:25:@14.4]
  reg [31:0] _RAND_8;
  reg  commandVec_5; // @[SpiReceiver.scala 34:25:@14.4]
  reg [31:0] _RAND_9;
  reg  commandArgumentVec_0; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_10;
  reg  commandArgumentVec_1; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_11;
  reg  commandArgumentVec_2; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_12;
  reg  commandArgumentVec_3; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_13;
  reg  commandArgumentVec_4; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_14;
  reg  commandArgumentVec_5; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_15;
  reg  commandArgumentVec_6; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_16;
  reg  commandArgumentVec_7; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_17;
  reg  commandArgumentVec_8; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_18;
  reg  commandArgumentVec_9; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_19;
  reg  commandArgumentVec_10; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_20;
  reg  commandArgumentVec_11; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_21;
  reg  commandArgumentVec_12; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_22;
  reg  commandArgumentVec_13; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_23;
  reg  commandArgumentVec_14; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_24;
  reg  commandArgumentVec_15; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_25;
  reg  commandArgumentVec_16; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_26;
  reg  commandArgumentVec_17; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_27;
  reg  commandArgumentVec_18; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_28;
  reg  commandArgumentVec_19; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_29;
  reg  commandArgumentVec_20; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_30;
  reg  commandArgumentVec_21; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_31;
  reg  commandArgumentVec_22; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_32;
  reg  commandArgumentVec_23; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_33;
  reg  commandArgumentVec_24; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_34;
  reg  commandArgumentVec_25; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_35;
  reg  commandArgumentVec_26; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_36;
  reg  commandArgumentVec_27; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_37;
  reg  commandArgumentVec_28; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_38;
  reg  commandArgumentVec_29; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_39;
  reg  commandArgumentVec_30; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_40;
  reg  commandArgumentVec_31; // @[SpiReceiver.scala 35:33:@15.4]
  reg [31:0] _RAND_41;
  wire [2:0] _T_90; // @[SpiReceiver.scala 37:36:@18.4]
  wire [2:0] _T_92; // @[SpiReceiver.scala 37:36:@20.4]
  wire [5:0] commandVecAsUInt; // @[SpiReceiver.scala 37:36:@21.4]
  reg [11:0] counter; // @[SpiReceiver.scala 39:22:@23.4]
  reg [31:0] _RAND_42;
  wire [7:0] _T_101; // @[SpiReceiver.scala 42:46:@31.4]
  wire [15:0] _T_109; // @[SpiReceiver.scala 42:46:@39.4]
  wire [7:0] _T_116; // @[SpiReceiver.scala 42:46:@46.4]
  wire [15:0] _T_124; // @[SpiReceiver.scala 42:46:@54.4]
  reg  _T_129; // @[SpiReceiver.scala 10:27:@62.4]
  reg [31:0] _RAND_43;
  wire  _T_130; // @[SpiReceiver.scala 11:11:@64.4]
  reg  _T_132; // @[SpiReceiver.scala 11:30:@65.4]
  reg [31:0] _RAND_44;
  wire  _T_134; // @[SpiReceiver.scala 11:22:@67.4]
  wire  _T_135; // @[SpiReceiver.scala 11:19:@68.4]
  wire  _T_136; // @[Conditional.scala 37:30:@70.6]
  wire  _T_137; // @[Conditional.scala 37:30:@75.8]
  wire  _T_139; // @[SpiReceiver.scala 55:36:@78.10]
  wire  _T_141; // @[SpiReceiver.scala 55:40:@79.10]
  wire  _T_142; // @[SpiReceiver.scala 55:69:@80.10]
  wire  _T_145; // @[SpiReceiver.scala 55:52:@82.10]
  wire  _T_148; // @[SpiReceiver.scala 58:58:@85.12]
  wire  _T_151; // @[SpiReceiver.scala 58:58:@87.12]
  wire  _T_154; // @[SpiReceiver.scala 58:58:@89.12]
  wire  _T_157; // @[SpiReceiver.scala 58:58:@91.12]
  wire  _T_160; // @[SpiReceiver.scala 58:58:@93.12]
  wire  _T_163; // @[SpiReceiver.scala 58:58:@95.12]
  wire [2:0] _GEN_0; // @[SpiReceiver.scala 55:85:@83.10]
  wire  _GEN_1; // @[SpiReceiver.scala 55:85:@83.10]
  wire  _GEN_2; // @[SpiReceiver.scala 55:85:@83.10]
  wire  _GEN_3; // @[SpiReceiver.scala 55:85:@83.10]
  wire  _GEN_4; // @[SpiReceiver.scala 55:85:@83.10]
  wire  _GEN_5; // @[SpiReceiver.scala 55:85:@83.10]
  wire  _GEN_6; // @[SpiReceiver.scala 55:85:@83.10]
  wire [11:0] _GEN_7; // @[SpiReceiver.scala 55:85:@83.10]
  wire  _T_165; // @[Conditional.scala 37:30:@101.10]
  wire  _T_167; // @[Conditional.scala 37:30:@103.12]
  wire  _T_193; // @[Conditional.scala 37:30:@123.14]
  wire  _T_219; // @[Conditional.scala 37:30:@143.16]
  wire  _T_245; // @[Conditional.scala 37:30:@163.18]
  wire  _GEN_8; // @[Conditional.scala 39:67:@164.18]
  wire  _GEN_9; // @[Conditional.scala 39:67:@164.18]
  wire  _GEN_10; // @[Conditional.scala 39:67:@164.18]
  wire  _GEN_11; // @[Conditional.scala 39:67:@164.18]
  wire  _GEN_12; // @[Conditional.scala 39:67:@164.18]
  wire  _GEN_13; // @[Conditional.scala 39:67:@164.18]
  wire  _GEN_14; // @[Conditional.scala 39:67:@164.18]
  wire  _GEN_15; // @[Conditional.scala 39:67:@164.18]
  wire [2:0] _GEN_16; // @[Conditional.scala 39:67:@164.18]
  wire  _GEN_17; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_18; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_19; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_20; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_21; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_22; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_23; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_24; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_25; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_26; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_27; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_28; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_29; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_30; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_31; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_32; // @[Conditional.scala 39:67:@144.16]
  wire [2:0] _GEN_33; // @[Conditional.scala 39:67:@144.16]
  wire  _GEN_34; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_35; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_36; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_37; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_38; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_39; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_40; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_41; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_42; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_43; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_44; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_45; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_46; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_47; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_48; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_49; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_50; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_51; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_52; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_53; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_54; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_55; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_56; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_57; // @[Conditional.scala 39:67:@124.14]
  wire [2:0] _GEN_58; // @[Conditional.scala 39:67:@124.14]
  wire  _GEN_59; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_60; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_61; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_62; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_63; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_64; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_65; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_66; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_67; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_68; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_69; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_70; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_71; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_72; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_73; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_74; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_75; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_76; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_77; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_78; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_79; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_80; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_81; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_82; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_83; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_84; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_85; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_86; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_87; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_88; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_89; // @[Conditional.scala 40:58:@104.12]
  wire  _GEN_90; // @[Conditional.scala 40:58:@104.12]
  wire [2:0] _GEN_91; // @[Conditional.scala 40:58:@104.12]
  wire [12:0] _T_271; // @[SpiReceiver.scala 82:36:@183.12]
  wire [11:0] _T_272; // @[SpiReceiver.scala 82:36:@184.12]
  wire  _T_273; // @[Conditional.scala 37:30:@188.12]
  wire  _T_296; // @[SpiReceiver.scala 88:39:@205.14]
  wire  _T_299; // @[SpiReceiver.scala 91:45:@211.16]
  wire [2:0] _GEN_92; // @[SpiReceiver.scala 91:55:@212.16]
  wire  _GEN_93; // @[SpiReceiver.scala 91:55:@212.16]
  wire [2:0] _GEN_94; // @[SpiReceiver.scala 88:49:@206.14]
  wire  _GEN_95; // @[SpiReceiver.scala 88:49:@206.14]
  wire  _T_302; // @[Conditional.scala 37:30:@223.14]
  wire  _T_303; // @[Conditional.scala 37:30:@225.16]
  wire  _T_305; // @[SpiReceiver.scala 104:49:@228.20]
  wire [11:0] _GEN_96; // @[SpiReceiver.scala 104:61:@229.20]
  wire [1:0] _GEN_97; // @[SpiReceiver.scala 104:61:@229.20]
  wire  _T_309; // @[SpiReceiver.scala 110:49:@236.20]
  wire  _T_311; // @[SpiReceiver.scala 112:55:@241.22]
  wire [2:0] _GEN_98; // @[SpiReceiver.scala 112:67:@242.22]
  wire [1:0] _GEN_99; // @[SpiReceiver.scala 110:61:@237.20]
  wire [2:0] _GEN_100; // @[SpiReceiver.scala 110:61:@237.20]
  wire [11:0] _GEN_101; // @[SpiReceiver.scala 103:51:@227.18]
  wire [1:0] _GEN_102; // @[SpiReceiver.scala 103:51:@227.18]
  wire [2:0] _GEN_103; // @[SpiReceiver.scala 103:51:@227.18]
  wire  _T_312; // @[Conditional.scala 37:30:@248.18]
  wire [11:0] _GEN_322; // @[SpiReceiver.scala 118:38:@250.20]
  wire  _T_313; // @[SpiReceiver.scala 118:38:@250.20]
  wire [11:0] _GEN_104; // @[SpiReceiver.scala 119:25:@251.20]
  wire [1:0] _GEN_105; // @[SpiReceiver.scala 119:25:@251.20]
  wire  _T_318; // @[Conditional.scala 37:30:@262.20]
  wire  _T_320; // @[SpiReceiver.scala 127:38:@264.22]
  wire [2:0] _T_322; // @[SpiReceiver.scala 130:41:@268.24]
  wire [11:0] _GEN_106; // @[SpiReceiver.scala 127:47:@265.22]
  wire [1:0] _GEN_107; // @[SpiReceiver.scala 127:47:@265.22]
  wire [2:0] _GEN_108; // @[SpiReceiver.scala 127:47:@265.22]
  wire [11:0] _GEN_109; // @[Conditional.scala 39:67:@263.20]
  wire [1:0] _GEN_110; // @[Conditional.scala 39:67:@263.20]
  wire [2:0] _GEN_111; // @[Conditional.scala 39:67:@263.20]
  wire [11:0] _GEN_112; // @[Conditional.scala 39:67:@249.18]
  wire [1:0] _GEN_113; // @[Conditional.scala 39:67:@249.18]
  wire [2:0] _GEN_114; // @[Conditional.scala 39:67:@249.18]
  wire [11:0] _GEN_115; // @[Conditional.scala 40:58:@226.16]
  wire [1:0] _GEN_116; // @[Conditional.scala 40:58:@226.16]
  wire [2:0] _GEN_117; // @[Conditional.scala 40:58:@226.16]
  wire [11:0] _GEN_118; // @[Conditional.scala 39:67:@224.14]
  wire [1:0] _GEN_119; // @[Conditional.scala 39:67:@224.14]
  wire [2:0] _GEN_120; // @[Conditional.scala 39:67:@224.14]
  wire  _GEN_121; // @[Conditional.scala 39:67:@189.12]
  wire [2:0] _GEN_128; // @[Conditional.scala 39:67:@189.12]
  wire  _GEN_129; // @[Conditional.scala 39:67:@189.12]
  wire [1:0] _GEN_130; // @[Conditional.scala 39:67:@189.12]
  wire [11:0] _GEN_131; // @[Conditional.scala 39:67:@189.12]
  wire  _GEN_132; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_133; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_134; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_135; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_136; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_137; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_138; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_139; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_140; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_141; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_142; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_143; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_144; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_145; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_146; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_147; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_148; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_149; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_150; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_151; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_152; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_153; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_154; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_155; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_156; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_157; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_158; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_159; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_160; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_161; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_162; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_163; // @[Conditional.scala 39:67:@102.10]
  wire [2:0] _GEN_164; // @[Conditional.scala 39:67:@102.10]
  wire [11:0] _GEN_165; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_166; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_173; // @[Conditional.scala 39:67:@102.10]
  wire [1:0] _GEN_174; // @[Conditional.scala 39:67:@102.10]
  wire  _GEN_175; // @[Conditional.scala 39:67:@76.8]
  wire [2:0] _GEN_176; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_177; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_178; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_179; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_180; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_181; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_182; // @[Conditional.scala 39:67:@76.8]
  wire [11:0] _GEN_183; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_184; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_185; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_186; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_187; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_188; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_189; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_190; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_191; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_192; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_193; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_194; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_195; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_196; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_197; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_198; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_199; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_200; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_201; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_202; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_203; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_204; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_205; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_206; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_207; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_208; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_209; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_210; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_211; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_212; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_213; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_214; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_215; // @[Conditional.scala 39:67:@76.8]
  wire  _GEN_222; // @[Conditional.scala 39:67:@76.8]
  wire [1:0] _GEN_223; // @[Conditional.scala 39:67:@76.8]
  wire [2:0] _GEN_224; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_225; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_226; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_227; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_228; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_229; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_230; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_231; // @[Conditional.scala 40:58:@71.6]
  wire [11:0] _GEN_232; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_233; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_234; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_235; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_236; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_237; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_238; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_239; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_240; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_241; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_242; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_243; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_244; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_245; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_246; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_247; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_248; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_249; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_250; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_251; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_252; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_253; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_254; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_255; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_256; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_257; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_258; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_259; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_260; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_261; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_262; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_263; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_264; // @[Conditional.scala 40:58:@71.6]
  wire  _GEN_271; // @[Conditional.scala 40:58:@71.6]
  wire [1:0] _GEN_272; // @[Conditional.scala 40:58:@71.6]
  wire [2:0] _GEN_273; // @[SpiReceiver.scala 48:40:@69.4]
  wire  _GEN_274; // @[SpiReceiver.scala 48:40:@69.4]
  wire [1:0] _GEN_321; // @[SpiReceiver.scala 48:40:@69.4]
  assign _T_90 = {commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 37:36:@18.4]
  assign _T_92 = {commandVec_5,commandVec_4,commandVec_3}; // @[SpiReceiver.scala 37:36:@20.4]
  assign commandVecAsUInt = {commandVec_5,commandVec_4,commandVec_3,commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 37:36:@21.4]
  assign _T_101 = {commandArgumentVec_7,commandArgumentVec_6,commandArgumentVec_5,commandArgumentVec_4,commandArgumentVec_3,commandArgumentVec_2,commandArgumentVec_1,commandArgumentVec_0}; // @[SpiReceiver.scala 42:46:@31.4]
  assign _T_109 = {commandArgumentVec_15,commandArgumentVec_14,commandArgumentVec_13,commandArgumentVec_12,commandArgumentVec_11,commandArgumentVec_10,commandArgumentVec_9,commandArgumentVec_8,_T_101}; // @[SpiReceiver.scala 42:46:@39.4]
  assign _T_116 = {commandArgumentVec_23,commandArgumentVec_22,commandArgumentVec_21,commandArgumentVec_20,commandArgumentVec_19,commandArgumentVec_18,commandArgumentVec_17,commandArgumentVec_16}; // @[SpiReceiver.scala 42:46:@46.4]
  assign _T_124 = {commandArgumentVec_31,commandArgumentVec_30,commandArgumentVec_29,commandArgumentVec_28,commandArgumentVec_27,commandArgumentVec_26,commandArgumentVec_25,commandArgumentVec_24,_T_116}; // @[SpiReceiver.scala 42:46:@54.4]
  assign _T_130 = io_BufferChanged & _T_129; // @[SpiReceiver.scala 11:11:@64.4]
  assign _T_134 = _T_132 == 1'h0; // @[SpiReceiver.scala 11:22:@67.4]
  assign _T_135 = _T_130 & _T_134; // @[SpiReceiver.scala 11:19:@68.4]
  assign _T_136 = 3'h0 == state; // @[Conditional.scala 37:30:@70.6]
  assign _T_137 = 3'h1 == state; // @[Conditional.scala 37:30:@75.8]
  assign _T_139 = io_InputBuffer[0]; // @[SpiReceiver.scala 55:36:@78.10]
  assign _T_141 = _T_139 == 1'h0; // @[SpiReceiver.scala 55:40:@79.10]
  assign _T_142 = io_InputBuffer[1]; // @[SpiReceiver.scala 55:69:@80.10]
  assign _T_145 = _T_141 & _T_142; // @[SpiReceiver.scala 55:52:@82.10]
  assign _T_148 = io_InputBuffer[2]; // @[SpiReceiver.scala 58:58:@85.12]
  assign _T_151 = io_InputBuffer[3]; // @[SpiReceiver.scala 58:58:@87.12]
  assign _T_154 = io_InputBuffer[4]; // @[SpiReceiver.scala 58:58:@89.12]
  assign _T_157 = io_InputBuffer[5]; // @[SpiReceiver.scala 58:58:@91.12]
  assign _T_160 = io_InputBuffer[6]; // @[SpiReceiver.scala 58:58:@93.12]
  assign _T_163 = io_InputBuffer[7]; // @[SpiReceiver.scala 58:58:@95.12]
  assign _GEN_0 = _T_145 ? 3'h2 : state; // @[SpiReceiver.scala 55:85:@83.10]
  assign _GEN_1 = _T_145 ? _T_148 : commandVec_0; // @[SpiReceiver.scala 55:85:@83.10]
  assign _GEN_2 = _T_145 ? _T_151 : commandVec_1; // @[SpiReceiver.scala 55:85:@83.10]
  assign _GEN_3 = _T_145 ? _T_154 : commandVec_2; // @[SpiReceiver.scala 55:85:@83.10]
  assign _GEN_4 = _T_145 ? _T_157 : commandVec_3; // @[SpiReceiver.scala 55:85:@83.10]
  assign _GEN_5 = _T_145 ? _T_160 : commandVec_4; // @[SpiReceiver.scala 55:85:@83.10]
  assign _GEN_6 = _T_145 ? _T_163 : commandVec_5; // @[SpiReceiver.scala 55:85:@83.10]
  assign _GEN_7 = _T_145 ? 12'h0 : counter; // @[SpiReceiver.scala 55:85:@83.10]
  assign _T_165 = 3'h2 == state; // @[Conditional.scala 37:30:@101.10]
  assign _T_167 = 12'h0 == counter; // @[Conditional.scala 37:30:@103.12]
  assign _T_193 = 12'h1 == counter; // @[Conditional.scala 37:30:@123.14]
  assign _T_219 = 12'h2 == counter; // @[Conditional.scala 37:30:@143.16]
  assign _T_245 = 12'h3 == counter; // @[Conditional.scala 37:30:@163.18]
  assign _GEN_8 = _T_245 ? _T_139 : commandArgumentVec_24; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_9 = _T_245 ? _T_142 : commandArgumentVec_25; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_10 = _T_245 ? _T_148 : commandArgumentVec_26; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_11 = _T_245 ? _T_151 : commandArgumentVec_27; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_12 = _T_245 ? _T_154 : commandArgumentVec_28; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_13 = _T_245 ? _T_157 : commandArgumentVec_29; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_14 = _T_245 ? _T_160 : commandArgumentVec_30; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_15 = _T_245 ? _T_163 : commandArgumentVec_31; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_16 = _T_245 ? 3'h3 : state; // @[Conditional.scala 39:67:@164.18]
  assign _GEN_17 = _T_219 ? _T_139 : commandArgumentVec_16; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_18 = _T_219 ? _T_142 : commandArgumentVec_17; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_19 = _T_219 ? _T_148 : commandArgumentVec_18; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_20 = _T_219 ? _T_151 : commandArgumentVec_19; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_21 = _T_219 ? _T_154 : commandArgumentVec_20; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_22 = _T_219 ? _T_157 : commandArgumentVec_21; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_23 = _T_219 ? _T_160 : commandArgumentVec_22; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_24 = _T_219 ? _T_163 : commandArgumentVec_23; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_25 = _T_219 ? commandArgumentVec_24 : _GEN_8; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_26 = _T_219 ? commandArgumentVec_25 : _GEN_9; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_27 = _T_219 ? commandArgumentVec_26 : _GEN_10; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_28 = _T_219 ? commandArgumentVec_27 : _GEN_11; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_29 = _T_219 ? commandArgumentVec_28 : _GEN_12; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_30 = _T_219 ? commandArgumentVec_29 : _GEN_13; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_31 = _T_219 ? commandArgumentVec_30 : _GEN_14; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_32 = _T_219 ? commandArgumentVec_31 : _GEN_15; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_33 = _T_219 ? state : _GEN_16; // @[Conditional.scala 39:67:@144.16]
  assign _GEN_34 = _T_193 ? _T_139 : commandArgumentVec_8; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_35 = _T_193 ? _T_142 : commandArgumentVec_9; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_36 = _T_193 ? _T_148 : commandArgumentVec_10; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_37 = _T_193 ? _T_151 : commandArgumentVec_11; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_38 = _T_193 ? _T_154 : commandArgumentVec_12; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_39 = _T_193 ? _T_157 : commandArgumentVec_13; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_40 = _T_193 ? _T_160 : commandArgumentVec_14; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_41 = _T_193 ? _T_163 : commandArgumentVec_15; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_42 = _T_193 ? commandArgumentVec_16 : _GEN_17; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_43 = _T_193 ? commandArgumentVec_17 : _GEN_18; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_44 = _T_193 ? commandArgumentVec_18 : _GEN_19; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_45 = _T_193 ? commandArgumentVec_19 : _GEN_20; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_46 = _T_193 ? commandArgumentVec_20 : _GEN_21; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_47 = _T_193 ? commandArgumentVec_21 : _GEN_22; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_48 = _T_193 ? commandArgumentVec_22 : _GEN_23; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_49 = _T_193 ? commandArgumentVec_23 : _GEN_24; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_50 = _T_193 ? commandArgumentVec_24 : _GEN_25; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_51 = _T_193 ? commandArgumentVec_25 : _GEN_26; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_52 = _T_193 ? commandArgumentVec_26 : _GEN_27; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_53 = _T_193 ? commandArgumentVec_27 : _GEN_28; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_54 = _T_193 ? commandArgumentVec_28 : _GEN_29; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_55 = _T_193 ? commandArgumentVec_29 : _GEN_30; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_56 = _T_193 ? commandArgumentVec_30 : _GEN_31; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_57 = _T_193 ? commandArgumentVec_31 : _GEN_32; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_58 = _T_193 ? state : _GEN_33; // @[Conditional.scala 39:67:@124.14]
  assign _GEN_59 = _T_167 ? _T_139 : commandArgumentVec_0; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_60 = _T_167 ? _T_142 : commandArgumentVec_1; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_61 = _T_167 ? _T_148 : commandArgumentVec_2; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_62 = _T_167 ? _T_151 : commandArgumentVec_3; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_63 = _T_167 ? _T_154 : commandArgumentVec_4; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_64 = _T_167 ? _T_157 : commandArgumentVec_5; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_65 = _T_167 ? _T_160 : commandArgumentVec_6; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_66 = _T_167 ? _T_163 : commandArgumentVec_7; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_67 = _T_167 ? commandArgumentVec_8 : _GEN_34; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_68 = _T_167 ? commandArgumentVec_9 : _GEN_35; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_69 = _T_167 ? commandArgumentVec_10 : _GEN_36; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_70 = _T_167 ? commandArgumentVec_11 : _GEN_37; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_71 = _T_167 ? commandArgumentVec_12 : _GEN_38; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_72 = _T_167 ? commandArgumentVec_13 : _GEN_39; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_73 = _T_167 ? commandArgumentVec_14 : _GEN_40; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_74 = _T_167 ? commandArgumentVec_15 : _GEN_41; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_75 = _T_167 ? commandArgumentVec_16 : _GEN_42; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_76 = _T_167 ? commandArgumentVec_17 : _GEN_43; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_77 = _T_167 ? commandArgumentVec_18 : _GEN_44; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_78 = _T_167 ? commandArgumentVec_19 : _GEN_45; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_79 = _T_167 ? commandArgumentVec_20 : _GEN_46; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_80 = _T_167 ? commandArgumentVec_21 : _GEN_47; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_81 = _T_167 ? commandArgumentVec_22 : _GEN_48; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_82 = _T_167 ? commandArgumentVec_23 : _GEN_49; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_83 = _T_167 ? commandArgumentVec_24 : _GEN_50; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_84 = _T_167 ? commandArgumentVec_25 : _GEN_51; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_85 = _T_167 ? commandArgumentVec_26 : _GEN_52; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_86 = _T_167 ? commandArgumentVec_27 : _GEN_53; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_87 = _T_167 ? commandArgumentVec_28 : _GEN_54; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_88 = _T_167 ? commandArgumentVec_29 : _GEN_55; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_89 = _T_167 ? commandArgumentVec_30 : _GEN_56; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_90 = _T_167 ? commandArgumentVec_31 : _GEN_57; // @[Conditional.scala 40:58:@104.12]
  assign _GEN_91 = _T_167 ? state : _GEN_58; // @[Conditional.scala 40:58:@104.12]
  assign _T_271 = counter + 12'h1; // @[SpiReceiver.scala 82:36:@183.12]
  assign _T_272 = counter + 12'h1; // @[SpiReceiver.scala 82:36:@184.12]
  assign _T_273 = 3'h3 == state; // @[Conditional.scala 37:30:@188.12]
  assign _T_296 = commandVecAsUInt == 6'h18; // @[SpiReceiver.scala 88:39:@205.14]
  assign _T_299 = commandVecAsUInt == 6'h19; // @[SpiReceiver.scala 91:45:@211.16]
  assign _GEN_92 = _T_299 ? 3'h4 : 3'h1; // @[SpiReceiver.scala 91:55:@212.16]
  assign _GEN_93 = _T_299 ? 1'h0 : 1'h1; // @[SpiReceiver.scala 91:55:@212.16]
  assign _GEN_94 = _T_296 ? 3'h4 : _GEN_92; // @[SpiReceiver.scala 88:49:@206.14]
  assign _GEN_95 = _T_296 ? 1'h1 : _GEN_93; // @[SpiReceiver.scala 88:49:@206.14]
  assign _T_302 = 3'h4 == state; // @[Conditional.scala 37:30:@223.14]
  assign _T_303 = 2'h0 == writestate; // @[Conditional.scala 37:30:@225.16]
  assign _T_305 = io_InputBuffer == 8'hfe; // @[SpiReceiver.scala 104:49:@228.20]
  assign _GEN_96 = _T_305 ? 12'h1 : counter; // @[SpiReceiver.scala 104:61:@229.20]
  assign _GEN_97 = _T_305 ? 2'h1 : writestate; // @[SpiReceiver.scala 104:61:@229.20]
  assign _T_309 = io_InputBuffer == 8'hfc; // @[SpiReceiver.scala 110:49:@236.20]
  assign _T_311 = io_InputBuffer == 8'hfd; // @[SpiReceiver.scala 112:55:@241.22]
  assign _GEN_98 = _T_311 ? 3'h1 : state; // @[SpiReceiver.scala 112:67:@242.22]
  assign _GEN_99 = _T_309 ? 2'h1 : writestate; // @[SpiReceiver.scala 110:61:@237.20]
  assign _GEN_100 = _T_309 ? state : _GEN_98; // @[SpiReceiver.scala 110:61:@237.20]
  assign _GEN_101 = writestate_isSingle ? _GEN_96 : 12'h1; // @[SpiReceiver.scala 103:51:@227.18]
  assign _GEN_102 = writestate_isSingle ? _GEN_97 : _GEN_99; // @[SpiReceiver.scala 103:51:@227.18]
  assign _GEN_103 = writestate_isSingle ? state : _GEN_100; // @[SpiReceiver.scala 103:51:@227.18]
  assign _T_312 = 2'h1 == writestate; // @[Conditional.scala 37:30:@248.18]
  assign _GEN_322 = {{4'd0}, io_DataBlockSize}; // @[SpiReceiver.scala 118:38:@250.20]
  assign _T_313 = counter == _GEN_322; // @[SpiReceiver.scala 118:38:@250.20]
  assign _GEN_104 = _T_313 ? 12'h1 : _T_272; // @[SpiReceiver.scala 119:25:@251.20]
  assign _GEN_105 = _T_313 ? 2'h2 : writestate; // @[SpiReceiver.scala 119:25:@251.20]
  assign _T_318 = 2'h2 == writestate; // @[Conditional.scala 37:30:@262.20]
  assign _T_320 = counter == 12'h2; // @[SpiReceiver.scala 127:38:@264.22]
  assign _T_322 = writestate_isSingle ? 3'h1 : 3'h4; // @[SpiReceiver.scala 130:41:@268.24]
  assign _GEN_106 = _T_320 ? 12'h0 : _T_272; // @[SpiReceiver.scala 127:47:@265.22]
  assign _GEN_107 = _T_320 ? 2'h0 : writestate; // @[SpiReceiver.scala 127:47:@265.22]
  assign _GEN_108 = _T_320 ? _T_322 : state; // @[SpiReceiver.scala 127:47:@265.22]
  assign _GEN_109 = _T_318 ? _GEN_106 : counter; // @[Conditional.scala 39:67:@263.20]
  assign _GEN_110 = _T_318 ? _GEN_107 : writestate; // @[Conditional.scala 39:67:@263.20]
  assign _GEN_111 = _T_318 ? _GEN_108 : state; // @[Conditional.scala 39:67:@263.20]
  assign _GEN_112 = _T_312 ? _GEN_104 : _GEN_109; // @[Conditional.scala 39:67:@249.18]
  assign _GEN_113 = _T_312 ? _GEN_105 : _GEN_110; // @[Conditional.scala 39:67:@249.18]
  assign _GEN_114 = _T_312 ? state : _GEN_111; // @[Conditional.scala 39:67:@249.18]
  assign _GEN_115 = _T_303 ? _GEN_101 : _GEN_112; // @[Conditional.scala 40:58:@226.16]
  assign _GEN_116 = _T_303 ? _GEN_102 : _GEN_113; // @[Conditional.scala 40:58:@226.16]
  assign _GEN_117 = _T_303 ? _GEN_103 : _GEN_114; // @[Conditional.scala 40:58:@226.16]
  assign _GEN_118 = _T_302 ? _GEN_115 : counter; // @[Conditional.scala 39:67:@224.14]
  assign _GEN_119 = _T_302 ? _GEN_116 : writestate; // @[Conditional.scala 39:67:@224.14]
  assign _GEN_120 = _T_302 ? _GEN_117 : state; // @[Conditional.scala 39:67:@224.14]
  assign _GEN_121 = _T_273 ? _T_163 : readSuccess; // @[Conditional.scala 39:67:@189.12]
  assign _GEN_128 = _T_273 ? _GEN_94 : _GEN_120; // @[Conditional.scala 39:67:@189.12]
  assign _GEN_129 = _T_273 ? _GEN_95 : writestate_isSingle; // @[Conditional.scala 39:67:@189.12]
  assign _GEN_130 = _T_273 ? 2'h0 : _GEN_119; // @[Conditional.scala 39:67:@189.12]
  assign _GEN_131 = _T_273 ? counter : _GEN_118; // @[Conditional.scala 39:67:@189.12]
  assign _GEN_132 = _T_165 ? _GEN_59 : commandArgumentVec_0; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_133 = _T_165 ? _GEN_60 : commandArgumentVec_1; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_134 = _T_165 ? _GEN_61 : commandArgumentVec_2; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_135 = _T_165 ? _GEN_62 : commandArgumentVec_3; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_136 = _T_165 ? _GEN_63 : commandArgumentVec_4; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_137 = _T_165 ? _GEN_64 : commandArgumentVec_5; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_138 = _T_165 ? _GEN_65 : commandArgumentVec_6; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_139 = _T_165 ? _GEN_66 : commandArgumentVec_7; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_140 = _T_165 ? _GEN_67 : commandArgumentVec_8; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_141 = _T_165 ? _GEN_68 : commandArgumentVec_9; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_142 = _T_165 ? _GEN_69 : commandArgumentVec_10; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_143 = _T_165 ? _GEN_70 : commandArgumentVec_11; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_144 = _T_165 ? _GEN_71 : commandArgumentVec_12; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_145 = _T_165 ? _GEN_72 : commandArgumentVec_13; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_146 = _T_165 ? _GEN_73 : commandArgumentVec_14; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_147 = _T_165 ? _GEN_74 : commandArgumentVec_15; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_148 = _T_165 ? _GEN_75 : commandArgumentVec_16; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_149 = _T_165 ? _GEN_76 : commandArgumentVec_17; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_150 = _T_165 ? _GEN_77 : commandArgumentVec_18; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_151 = _T_165 ? _GEN_78 : commandArgumentVec_19; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_152 = _T_165 ? _GEN_79 : commandArgumentVec_20; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_153 = _T_165 ? _GEN_80 : commandArgumentVec_21; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_154 = _T_165 ? _GEN_81 : commandArgumentVec_22; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_155 = _T_165 ? _GEN_82 : commandArgumentVec_23; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_156 = _T_165 ? _GEN_83 : commandArgumentVec_24; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_157 = _T_165 ? _GEN_84 : commandArgumentVec_25; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_158 = _T_165 ? _GEN_85 : commandArgumentVec_26; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_159 = _T_165 ? _GEN_86 : commandArgumentVec_27; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_160 = _T_165 ? _GEN_87 : commandArgumentVec_28; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_161 = _T_165 ? _GEN_88 : commandArgumentVec_29; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_162 = _T_165 ? _GEN_89 : commandArgumentVec_30; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_163 = _T_165 ? _GEN_90 : commandArgumentVec_31; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_164 = _T_165 ? _GEN_91 : _GEN_128; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_165 = _T_165 ? _T_272 : _GEN_131; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_166 = _T_165 ? readSuccess : _GEN_121; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_173 = _T_165 ? writestate_isSingle : _GEN_129; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_174 = _T_165 ? writestate : _GEN_130; // @[Conditional.scala 39:67:@102.10]
  assign _GEN_175 = _T_137 ? 1'h0 : _GEN_166; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_176 = _T_137 ? _GEN_0 : _GEN_164; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_177 = _T_137 ? _GEN_1 : commandVec_0; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_178 = _T_137 ? _GEN_2 : commandVec_1; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_179 = _T_137 ? _GEN_3 : commandVec_2; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_180 = _T_137 ? _GEN_4 : commandVec_3; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_181 = _T_137 ? _GEN_5 : commandVec_4; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_182 = _T_137 ? _GEN_6 : commandVec_5; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_183 = _T_137 ? _GEN_7 : _GEN_165; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_184 = _T_137 ? commandArgumentVec_0 : _GEN_132; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_185 = _T_137 ? commandArgumentVec_1 : _GEN_133; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_186 = _T_137 ? commandArgumentVec_2 : _GEN_134; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_187 = _T_137 ? commandArgumentVec_3 : _GEN_135; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_188 = _T_137 ? commandArgumentVec_4 : _GEN_136; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_189 = _T_137 ? commandArgumentVec_5 : _GEN_137; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_190 = _T_137 ? commandArgumentVec_6 : _GEN_138; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_191 = _T_137 ? commandArgumentVec_7 : _GEN_139; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_192 = _T_137 ? commandArgumentVec_8 : _GEN_140; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_193 = _T_137 ? commandArgumentVec_9 : _GEN_141; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_194 = _T_137 ? commandArgumentVec_10 : _GEN_142; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_195 = _T_137 ? commandArgumentVec_11 : _GEN_143; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_196 = _T_137 ? commandArgumentVec_12 : _GEN_144; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_197 = _T_137 ? commandArgumentVec_13 : _GEN_145; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_198 = _T_137 ? commandArgumentVec_14 : _GEN_146; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_199 = _T_137 ? commandArgumentVec_15 : _GEN_147; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_200 = _T_137 ? commandArgumentVec_16 : _GEN_148; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_201 = _T_137 ? commandArgumentVec_17 : _GEN_149; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_202 = _T_137 ? commandArgumentVec_18 : _GEN_150; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_203 = _T_137 ? commandArgumentVec_19 : _GEN_151; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_204 = _T_137 ? commandArgumentVec_20 : _GEN_152; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_205 = _T_137 ? commandArgumentVec_21 : _GEN_153; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_206 = _T_137 ? commandArgumentVec_22 : _GEN_154; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_207 = _T_137 ? commandArgumentVec_23 : _GEN_155; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_208 = _T_137 ? commandArgumentVec_24 : _GEN_156; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_209 = _T_137 ? commandArgumentVec_25 : _GEN_157; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_210 = _T_137 ? commandArgumentVec_26 : _GEN_158; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_211 = _T_137 ? commandArgumentVec_27 : _GEN_159; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_212 = _T_137 ? commandArgumentVec_28 : _GEN_160; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_213 = _T_137 ? commandArgumentVec_29 : _GEN_161; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_214 = _T_137 ? commandArgumentVec_30 : _GEN_162; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_215 = _T_137 ? commandArgumentVec_31 : _GEN_163; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_222 = _T_137 ? writestate_isSingle : _GEN_173; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_223 = _T_137 ? writestate : _GEN_174; // @[Conditional.scala 39:67:@76.8]
  assign _GEN_224 = _T_136 ? 3'h1 : _GEN_176; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_225 = _T_136 ? readSuccess : _GEN_175; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_226 = _T_136 ? commandVec_0 : _GEN_177; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_227 = _T_136 ? commandVec_1 : _GEN_178; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_228 = _T_136 ? commandVec_2 : _GEN_179; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_229 = _T_136 ? commandVec_3 : _GEN_180; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_230 = _T_136 ? commandVec_4 : _GEN_181; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_231 = _T_136 ? commandVec_5 : _GEN_182; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_232 = _T_136 ? counter : _GEN_183; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_233 = _T_136 ? commandArgumentVec_0 : _GEN_184; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_234 = _T_136 ? commandArgumentVec_1 : _GEN_185; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_235 = _T_136 ? commandArgumentVec_2 : _GEN_186; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_236 = _T_136 ? commandArgumentVec_3 : _GEN_187; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_237 = _T_136 ? commandArgumentVec_4 : _GEN_188; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_238 = _T_136 ? commandArgumentVec_5 : _GEN_189; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_239 = _T_136 ? commandArgumentVec_6 : _GEN_190; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_240 = _T_136 ? commandArgumentVec_7 : _GEN_191; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_241 = _T_136 ? commandArgumentVec_8 : _GEN_192; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_242 = _T_136 ? commandArgumentVec_9 : _GEN_193; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_243 = _T_136 ? commandArgumentVec_10 : _GEN_194; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_244 = _T_136 ? commandArgumentVec_11 : _GEN_195; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_245 = _T_136 ? commandArgumentVec_12 : _GEN_196; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_246 = _T_136 ? commandArgumentVec_13 : _GEN_197; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_247 = _T_136 ? commandArgumentVec_14 : _GEN_198; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_248 = _T_136 ? commandArgumentVec_15 : _GEN_199; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_249 = _T_136 ? commandArgumentVec_16 : _GEN_200; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_250 = _T_136 ? commandArgumentVec_17 : _GEN_201; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_251 = _T_136 ? commandArgumentVec_18 : _GEN_202; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_252 = _T_136 ? commandArgumentVec_19 : _GEN_203; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_253 = _T_136 ? commandArgumentVec_20 : _GEN_204; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_254 = _T_136 ? commandArgumentVec_21 : _GEN_205; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_255 = _T_136 ? commandArgumentVec_22 : _GEN_206; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_256 = _T_136 ? commandArgumentVec_23 : _GEN_207; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_257 = _T_136 ? commandArgumentVec_24 : _GEN_208; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_258 = _T_136 ? commandArgumentVec_25 : _GEN_209; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_259 = _T_136 ? commandArgumentVec_26 : _GEN_210; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_260 = _T_136 ? commandArgumentVec_27 : _GEN_211; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_261 = _T_136 ? commandArgumentVec_28 : _GEN_212; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_262 = _T_136 ? commandArgumentVec_29 : _GEN_213; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_263 = _T_136 ? commandArgumentVec_30 : _GEN_214; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_264 = _T_136 ? commandArgumentVec_31 : _GEN_215; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_271 = _T_136 ? writestate_isSingle : _GEN_222; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_272 = _T_136 ? writestate : _GEN_223; // @[Conditional.scala 40:58:@71.6]
  assign _GEN_273 = _T_135 ? _GEN_224 : state; // @[SpiReceiver.scala 48:40:@69.4]
  assign _GEN_274 = _T_135 ? _GEN_225 : readSuccess; // @[SpiReceiver.scala 48:40:@69.4]
  assign _GEN_321 = _T_135 ? _GEN_272 : writestate; // @[SpiReceiver.scala 48:40:@69.4]
  assign io_CommandReadFinished = state > 3'h1; // @[SpiReceiver.scala 44:28:@58.4]
  assign io_ArgumentReadFinished = state > 3'h2; // @[SpiReceiver.scala 45:29:@60.4]
  assign io_ReadSuccess = readSuccess; // @[SpiReceiver.scala 46:20:@61.4]
  assign io_Command = {_T_92,_T_90}; // @[SpiReceiver.scala 41:16:@24.4]
  assign io_CommandArgument = {_T_124,_T_109}; // @[SpiReceiver.scala 42:24:@56.4]
  assign io____state = state; // @[SpiReceiver.scala 29:17:@11.4]
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
  writestate_isSingle = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  writestate = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  readSuccess = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  commandVec_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  commandVec_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  commandVec_2 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  commandVec_3 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  commandVec_4 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  commandVec_5 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  commandArgumentVec_0 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  commandArgumentVec_1 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  commandArgumentVec_2 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  commandArgumentVec_3 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  commandArgumentVec_4 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  commandArgumentVec_5 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  commandArgumentVec_6 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  commandArgumentVec_7 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  commandArgumentVec_8 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  commandArgumentVec_9 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  commandArgumentVec_10 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  commandArgumentVec_11 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  commandArgumentVec_12 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  commandArgumentVec_13 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  commandArgumentVec_14 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  commandArgumentVec_15 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  commandArgumentVec_16 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  commandArgumentVec_17 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  commandArgumentVec_18 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  commandArgumentVec_19 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  commandArgumentVec_20 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  commandArgumentVec_21 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  commandArgumentVec_22 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  commandArgumentVec_23 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  commandArgumentVec_24 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  commandArgumentVec_25 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  commandArgumentVec_26 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  commandArgumentVec_27 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  commandArgumentVec_28 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  commandArgumentVec_29 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  commandArgumentVec_30 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  commandArgumentVec_31 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  counter = _RAND_42[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_129 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_132 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (!(_T_165)) begin
            if (_T_273) begin
              if (_T_296) begin
                writestate_isSingle <= 1'h1;
              end else begin
                if (_T_299) begin
                  writestate_isSingle <= 1'h0;
                end else begin
                  writestate_isSingle <= 1'h1;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_135) begin
        if (_T_136) begin
          state <= 3'h1;
        end else begin
          if (_T_137) begin
            if (_T_145) begin
              state <= 3'h2;
            end
          end else begin
            if (_T_165) begin
              if (!(_T_167)) begin
                if (!(_T_193)) begin
                  if (!(_T_219)) begin
                    if (_T_245) begin
                      state <= 3'h3;
                    end
                  end
                end
              end
            end else begin
              if (_T_273) begin
                if (_T_296) begin
                  state <= 3'h4;
                end else begin
                  if (_T_299) begin
                    state <= 3'h4;
                  end else begin
                    state <= 3'h1;
                  end
                end
              end else begin
                if (_T_302) begin
                  if (_T_303) begin
                    if (!(writestate_isSingle)) begin
                      if (!(_T_309)) begin
                        if (_T_311) begin
                          state <= 3'h1;
                        end
                      end
                    end
                  end else begin
                    if (!(_T_312)) begin
                      if (_T_318) begin
                        if (_T_320) begin
                          if (writestate_isSingle) begin
                            state <= 3'h1;
                          end else begin
                            state <= 3'h4;
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
      writestate <= 2'h0;
    end else begin
      if (_T_135) begin
        if (!(_T_136)) begin
          if (!(_T_137)) begin
            if (!(_T_165)) begin
              if (_T_273) begin
                writestate <= 2'h0;
              end else begin
                if (_T_302) begin
                  if (_T_303) begin
                    if (writestate_isSingle) begin
                      if (_T_305) begin
                        writestate <= 2'h1;
                      end
                    end else begin
                      if (_T_309) begin
                        writestate <= 2'h1;
                      end
                    end
                  end else begin
                    if (_T_312) begin
                      if (_T_313) begin
                        writestate <= 2'h2;
                      end
                    end else begin
                      if (_T_318) begin
                        if (_T_320) begin
                          writestate <= 2'h0;
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
      readSuccess <= 1'h0;
    end else begin
      if (_T_135) begin
        if (!(_T_136)) begin
          if (_T_137) begin
            readSuccess <= 1'h0;
          end else begin
            if (!(_T_165)) begin
              if (_T_273) begin
                readSuccess <= _T_163;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (_T_137) begin
          if (_T_145) begin
            commandVec_0 <= _T_148;
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (_T_137) begin
          if (_T_145) begin
            commandVec_1 <= _T_151;
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (_T_137) begin
          if (_T_145) begin
            commandVec_2 <= _T_154;
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (_T_137) begin
          if (_T_145) begin
            commandVec_3 <= _T_157;
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (_T_137) begin
          if (_T_145) begin
            commandVec_4 <= _T_160;
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (_T_137) begin
          if (_T_145) begin
            commandVec_5 <= _T_163;
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (_T_167) begin
              commandArgumentVec_0 <= _T_139;
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (_T_167) begin
              commandArgumentVec_1 <= _T_142;
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (_T_167) begin
              commandArgumentVec_2 <= _T_148;
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (_T_167) begin
              commandArgumentVec_3 <= _T_151;
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (_T_167) begin
              commandArgumentVec_4 <= _T_154;
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (_T_167) begin
              commandArgumentVec_5 <= _T_157;
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (_T_167) begin
              commandArgumentVec_6 <= _T_160;
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (_T_167) begin
              commandArgumentVec_7 <= _T_163;
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (_T_193) begin
                commandArgumentVec_8 <= _T_139;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (_T_193) begin
                commandArgumentVec_9 <= _T_142;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (_T_193) begin
                commandArgumentVec_10 <= _T_148;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (_T_193) begin
                commandArgumentVec_11 <= _T_151;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (_T_193) begin
                commandArgumentVec_12 <= _T_154;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (_T_193) begin
                commandArgumentVec_13 <= _T_157;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (_T_193) begin
                commandArgumentVec_14 <= _T_160;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (_T_193) begin
                commandArgumentVec_15 <= _T_163;
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (_T_219) begin
                  commandArgumentVec_16 <= _T_139;
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (_T_219) begin
                  commandArgumentVec_17 <= _T_142;
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (_T_219) begin
                  commandArgumentVec_18 <= _T_148;
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (_T_219) begin
                  commandArgumentVec_19 <= _T_151;
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (_T_219) begin
                  commandArgumentVec_20 <= _T_154;
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (_T_219) begin
                  commandArgumentVec_21 <= _T_157;
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (_T_219) begin
                  commandArgumentVec_22 <= _T_160;
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (_T_219) begin
                  commandArgumentVec_23 <= _T_163;
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (!(_T_219)) begin
                  if (_T_245) begin
                    commandArgumentVec_24 <= _T_139;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (!(_T_219)) begin
                  if (_T_245) begin
                    commandArgumentVec_25 <= _T_142;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (!(_T_219)) begin
                  if (_T_245) begin
                    commandArgumentVec_26 <= _T_148;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (!(_T_219)) begin
                  if (_T_245) begin
                    commandArgumentVec_27 <= _T_151;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (!(_T_219)) begin
                  if (_T_245) begin
                    commandArgumentVec_28 <= _T_154;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (!(_T_219)) begin
                  if (_T_245) begin
                    commandArgumentVec_29 <= _T_157;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (!(_T_219)) begin
                  if (_T_245) begin
                    commandArgumentVec_30 <= _T_160;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (!(_T_137)) begin
          if (_T_165) begin
            if (!(_T_167)) begin
              if (!(_T_193)) begin
                if (!(_T_219)) begin
                  if (_T_245) begin
                    commandArgumentVec_31 <= _T_163;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_135) begin
      if (!(_T_136)) begin
        if (_T_137) begin
          if (_T_145) begin
            counter <= 12'h0;
          end
        end else begin
          if (_T_165) begin
            counter <= _T_272;
          end else begin
            if (!(_T_273)) begin
              if (_T_302) begin
                if (_T_303) begin
                  if (writestate_isSingle) begin
                    if (_T_305) begin
                      counter <= 12'h1;
                    end
                  end else begin
                    counter <= 12'h1;
                  end
                end else begin
                  if (_T_312) begin
                    if (_T_313) begin
                      counter <= 12'h1;
                    end else begin
                      counter <= _T_272;
                    end
                  end else begin
                    if (_T_318) begin
                      if (_T_320) begin
                        counter <= 12'h0;
                      end else begin
                        counter <= _T_272;
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
    _T_129 <= io_BufferChanged;
    _T_132 <= _T_129;
  end
endmodule
