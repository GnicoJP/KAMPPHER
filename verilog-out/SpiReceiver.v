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
  reg  resetSignal; // @[SpiReceiver.scala 41:30:@10.4]
  reg [31:0] _RAND_0;
  reg [2:0] _T_41; // @[SpiReceiver.scala 45:28:@11.4]
  reg [31:0] _RAND_1;
  reg  _T_57; // @[SpiReceiver.scala 49:34:@14.4]
  reg [31:0] _RAND_2;
  reg [7:0] _T_60; // @[SpiReceiver.scala 51:30:@15.4]
  reg [31:0] _RAND_3;
  reg  _T_64_0; // @[SpiReceiver.scala 53:29:@16.4]
  reg [31:0] _RAND_4;
  reg  _T_64_1; // @[SpiReceiver.scala 53:29:@16.4]
  reg [31:0] _RAND_5;
  reg  _T_64_2; // @[SpiReceiver.scala 53:29:@16.4]
  reg [31:0] _RAND_6;
  reg  _T_64_3; // @[SpiReceiver.scala 53:29:@16.4]
  reg [31:0] _RAND_7;
  reg  _T_64_4; // @[SpiReceiver.scala 53:29:@16.4]
  reg [31:0] _RAND_8;
  reg  _T_64_5; // @[SpiReceiver.scala 53:29:@16.4]
  reg [31:0] _RAND_9;
  reg  _T_76_0; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_10;
  reg  _T_76_1; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_11;
  reg  _T_76_2; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_12;
  reg  _T_76_3; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_13;
  reg  _T_76_4; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_14;
  reg  _T_76_5; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_15;
  reg  _T_76_6; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_16;
  reg  _T_76_7; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_17;
  reg  _T_76_8; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_18;
  reg  _T_76_9; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_19;
  reg  _T_76_10; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_20;
  reg  _T_76_11; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_21;
  reg  _T_76_12; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_22;
  reg  _T_76_13; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_23;
  reg  _T_76_14; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_24;
  reg  _T_76_15; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_25;
  reg  _T_76_16; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_26;
  reg  _T_76_17; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_27;
  reg  _T_76_18; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_28;
  reg  _T_76_19; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_29;
  reg  _T_76_20; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_30;
  reg  _T_76_21; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_31;
  reg  _T_76_22; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_32;
  reg  _T_76_23; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_33;
  reg  _T_76_24; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_34;
  reg  _T_76_25; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_35;
  reg  _T_76_26; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_36;
  reg  _T_76_27; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_37;
  reg  _T_76_28; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_38;
  reg  _T_76_29; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_39;
  reg  _T_76_30; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_40;
  reg  _T_76_31; // @[SpiReceiver.scala 54:37:@17.4]
  reg [31:0] _RAND_41;
  wire [2:0] _T_112; // @[SpiReceiver.scala 56:34:@19.4]
  wire [2:0] _T_114; // @[SpiReceiver.scala 56:34:@21.4]
  wire [5:0] _T_115; // @[SpiReceiver.scala 56:34:@22.4]
  wire [7:0] _T_122; // @[SpiReceiver.scala 57:50:@30.4]
  wire [15:0] _T_130; // @[SpiReceiver.scala 57:50:@38.4]
  wire [7:0] _T_137; // @[SpiReceiver.scala 57:50:@45.4]
  wire [15:0] _T_145; // @[SpiReceiver.scala 57:50:@53.4]
  reg  _T_189_0; // @[SpiReceiver.scala 59:29:@65.4]
  reg [31:0] _RAND_42;
  reg  _T_189_1; // @[SpiReceiver.scala 59:29:@65.4]
  reg [31:0] _RAND_43;
  reg  _T_189_2; // @[SpiReceiver.scala 59:29:@65.4]
  reg [31:0] _RAND_44;
  reg  _T_189_3; // @[SpiReceiver.scala 59:29:@65.4]
  reg [31:0] _RAND_45;
  reg  _T_189_4; // @[SpiReceiver.scala 59:29:@65.4]
  reg [31:0] _RAND_46;
  reg  _T_189_5; // @[SpiReceiver.scala 59:29:@65.4]
  reg [31:0] _RAND_47;
  reg  _T_189_6; // @[SpiReceiver.scala 59:29:@65.4]
  reg [31:0] _RAND_48;
  reg  _T_189_7; // @[SpiReceiver.scala 59:29:@65.4]
  reg [31:0] _RAND_49;
  reg  _T_260_0; // @[SpiReceiver.scala 61:33:@75.4]
  reg [31:0] _RAND_50;
  reg  _T_260_1; // @[SpiReceiver.scala 61:33:@75.4]
  reg [31:0] _RAND_51;
  reg  _T_260_2; // @[SpiReceiver.scala 61:33:@75.4]
  reg [31:0] _RAND_52;
  reg  _T_260_3; // @[SpiReceiver.scala 61:33:@75.4]
  reg [31:0] _RAND_53;
  reg  _T_260_4; // @[SpiReceiver.scala 61:33:@75.4]
  reg [31:0] _RAND_54;
  reg  _T_260_5; // @[SpiReceiver.scala 61:33:@75.4]
  reg [31:0] _RAND_55;
  reg  _T_260_6; // @[SpiReceiver.scala 61:33:@75.4]
  reg [31:0] _RAND_56;
  reg  _T_260_7; // @[SpiReceiver.scala 61:33:@75.4]
  reg [31:0] _RAND_57;
  reg [2:0] _T_291; // @[SpiReceiver.scala 62:34:@76.4]
  reg [31:0] _RAND_58;
  wire [3:0] _T_296; // @[SpiReceiver.scala 68:36:@84.4]
  wire [3:0] _T_299; // @[SpiReceiver.scala 68:36:@87.4]
  wire  _GEN_0; // @[SpiReceiver.scala 71:29:@91.4]
  wire  _GEN_1; // @[SpiReceiver.scala 71:29:@91.4]
  wire  _GEN_2; // @[SpiReceiver.scala 71:29:@91.4]
  wire  _GEN_3; // @[SpiReceiver.scala 71:29:@91.4]
  wire  _GEN_4; // @[SpiReceiver.scala 71:29:@91.4]
  wire  _GEN_5; // @[SpiReceiver.scala 71:29:@91.4]
  wire  _GEN_6; // @[SpiReceiver.scala 71:29:@91.4]
  wire  _GEN_7; // @[SpiReceiver.scala 71:29:@91.4]
  wire [3:0] _T_305; // @[SpiReceiver.scala 72:36:@92.4]
  wire [2:0] _T_306; // @[SpiReceiver.scala 72:36:@93.4]
  wire  _T_308; // @[SpiReceiver.scala 74:26:@95.4]
  wire  _T_310; // @[SpiReceiver.scala 77:32:@107.6]
  wire  _T_311; // @[Conditional.scala 37:30:@109.8]
  wire  _T_312; // @[Conditional.scala 37:30:@114.10]
  wire  _T_315; // @[SpiReceiver.scala 84:40:@117.12]
  wire  _T_318; // @[SpiReceiver.scala 84:52:@119.12]
  wire [2:0] _GEN_8; // @[SpiReceiver.scala 84:81:@120.12]
  wire  _GEN_9; // @[SpiReceiver.scala 84:81:@120.12]
  wire  _GEN_10; // @[SpiReceiver.scala 84:81:@120.12]
  wire  _GEN_11; // @[SpiReceiver.scala 84:81:@120.12]
  wire  _GEN_12; // @[SpiReceiver.scala 84:81:@120.12]
  wire  _GEN_13; // @[SpiReceiver.scala 84:81:@120.12]
  wire  _GEN_14; // @[SpiReceiver.scala 84:81:@120.12]
  wire [7:0] _GEN_15; // @[SpiReceiver.scala 84:81:@120.12]
  wire  _T_332; // @[Conditional.scala 37:30:@132.12]
  wire  _T_334; // @[Conditional.scala 37:30:@134.14]
  wire  _T_352; // @[Conditional.scala 37:30:@146.16]
  wire  _T_370; // @[Conditional.scala 37:30:@158.18]
  wire  _T_388; // @[Conditional.scala 37:30:@170.20]
  wire  _GEN_16; // @[Conditional.scala 39:67:@171.20]
  wire  _GEN_17; // @[Conditional.scala 39:67:@171.20]
  wire  _GEN_18; // @[Conditional.scala 39:67:@171.20]
  wire  _GEN_19; // @[Conditional.scala 39:67:@171.20]
  wire  _GEN_20; // @[Conditional.scala 39:67:@171.20]
  wire  _GEN_21; // @[Conditional.scala 39:67:@171.20]
  wire  _GEN_22; // @[Conditional.scala 39:67:@171.20]
  wire  _GEN_23; // @[Conditional.scala 39:67:@171.20]
  wire  _GEN_24; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_25; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_26; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_27; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_28; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_29; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_30; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_31; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_32; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_33; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_34; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_35; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_36; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_37; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_38; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_39; // @[Conditional.scala 39:67:@159.18]
  wire  _GEN_40; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_41; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_42; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_43; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_44; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_45; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_46; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_47; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_48; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_49; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_50; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_51; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_52; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_53; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_54; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_55; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_56; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_57; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_58; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_59; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_60; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_61; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_62; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_63; // @[Conditional.scala 39:67:@147.16]
  wire  _GEN_64; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_65; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_66; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_67; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_68; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_69; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_70; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_71; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_72; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_73; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_74; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_75; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_76; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_77; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_78; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_79; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_80; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_81; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_82; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_83; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_84; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_85; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_86; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_87; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_88; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_89; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_90; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_91; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_92; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_93; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_94; // @[Conditional.scala 40:58:@135.14]
  wire  _GEN_95; // @[Conditional.scala 40:58:@135.14]
  wire [8:0] _T_406; // @[SpiReceiver.scala 110:40:@181.14]
  wire [7:0] _T_407; // @[SpiReceiver.scala 110:40:@182.14]
  wire  _T_409; // @[SpiReceiver.scala 111:34:@184.14]
  wire [2:0] _GEN_96; // @[SpiReceiver.scala 111:43:@185.14]
  wire [7:0] _GEN_97; // @[SpiReceiver.scala 111:43:@185.14]
  wire  _T_414; // @[Conditional.scala 37:30:@196.14]
  wire  _T_435; // @[SpiReceiver.scala 122:52:@211.16]
  wire [2:0] _T_436; // @[SpiReceiver.scala 122:33:@212.16]
  wire  _GEN_98; // @[Conditional.scala 39:67:@197.14]
  wire [2:0] _GEN_105; // @[Conditional.scala 39:67:@197.14]
  wire  _GEN_106; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_107; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_108; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_109; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_110; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_111; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_112; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_113; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_114; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_115; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_116; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_117; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_118; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_119; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_120; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_121; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_122; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_123; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_124; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_125; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_126; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_127; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_128; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_129; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_130; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_131; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_132; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_133; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_134; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_135; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_136; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_137; // @[Conditional.scala 39:67:@133.12]
  wire [7:0] _GEN_138; // @[Conditional.scala 39:67:@133.12]
  wire [2:0] _GEN_139; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_140; // @[Conditional.scala 39:67:@133.12]
  wire  _GEN_147; // @[Conditional.scala 39:67:@115.10]
  wire [2:0] _GEN_148; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_149; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_150; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_151; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_152; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_153; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_154; // @[Conditional.scala 39:67:@115.10]
  wire [7:0] _GEN_155; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_156; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_157; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_158; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_159; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_160; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_161; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_162; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_163; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_164; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_165; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_166; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_167; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_168; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_169; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_170; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_171; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_172; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_173; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_174; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_175; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_176; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_177; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_178; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_179; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_180; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_181; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_182; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_183; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_184; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_185; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_186; // @[Conditional.scala 39:67:@115.10]
  wire  _GEN_187; // @[Conditional.scala 39:67:@115.10]
  wire [2:0] _GEN_194; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_195; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_196; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_197; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_198; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_199; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_200; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_201; // @[Conditional.scala 40:58:@110.8]
  wire [7:0] _GEN_202; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_203; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_204; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_205; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_206; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_207; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_208; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_209; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_210; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_211; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_212; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_213; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_214; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_215; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_216; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_217; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_218; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_219; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_220; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_221; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_222; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_223; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_224; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_225; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_226; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_227; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_228; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_229; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_230; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_231; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_232; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_233; // @[Conditional.scala 40:58:@110.8]
  wire  _GEN_234; // @[Conditional.scala 40:58:@110.8]
  wire [2:0] _GEN_241; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_242; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_243; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_244; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_245; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_246; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_247; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_248; // @[SpiReceiver.scala 77:40:@108.6]
  wire [7:0] _GEN_249; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_250; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_251; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_252; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_253; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_254; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_255; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_256; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_257; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_258; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_259; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_260; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_261; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_262; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_263; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_264; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_265; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_266; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_267; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_268; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_269; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_270; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_271; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_272; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_273; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_274; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_275; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_276; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_277; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_278; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_279; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_280; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_281; // @[SpiReceiver.scala 77:40:@108.6]
  wire  _GEN_288; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _GEN_289; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _GEN_290; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _GEN_291; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _GEN_292; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _GEN_293; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _GEN_294; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _GEN_295; // @[SpiReceiver.scala 74:34:@96.4]
  wire [2:0] _GEN_296; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _GEN_297; // @[SpiReceiver.scala 74:34:@96.4]
  wire [7:0] _GEN_304; // @[SpiReceiver.scala 74:34:@96.4]
  wire  _T_437; // @[SpiReceiver.scala 131:32:@216.4]
  reg  _T_440; // @[SpiReceiver.scala 24:22:@218.4]
  reg [31:0] _RAND_59;
  wire  _T_442; // @[SpiReceiver.scala 24:14:@220.4]
  wire  _T_443; // @[SpiReceiver.scala 24:11:@221.4]
  wire  _GEN_343; // @[SpiReceiver.scala 131:48:@222.4]
  assign _T_112 = {_T_64_2,_T_64_1,_T_64_0}; // @[SpiReceiver.scala 56:34:@19.4]
  assign _T_114 = {_T_64_5,_T_64_4,_T_64_3}; // @[SpiReceiver.scala 56:34:@21.4]
  assign _T_115 = {_T_64_5,_T_64_4,_T_64_3,_T_64_2,_T_64_1,_T_64_0}; // @[SpiReceiver.scala 56:34:@22.4]
  assign _T_122 = {_T_76_7,_T_76_6,_T_76_5,_T_76_4,_T_76_3,_T_76_2,_T_76_1,_T_76_0}; // @[SpiReceiver.scala 57:50:@30.4]
  assign _T_130 = {_T_76_15,_T_76_14,_T_76_13,_T_76_12,_T_76_11,_T_76_10,_T_76_9,_T_76_8,_T_122}; // @[SpiReceiver.scala 57:50:@38.4]
  assign _T_137 = {_T_76_23,_T_76_22,_T_76_21,_T_76_20,_T_76_19,_T_76_18,_T_76_17,_T_76_16}; // @[SpiReceiver.scala 57:50:@45.4]
  assign _T_145 = {_T_76_31,_T_76_30,_T_76_29,_T_76_28,_T_76_27,_T_76_26,_T_76_25,_T_76_24,_T_137}; // @[SpiReceiver.scala 57:50:@53.4]
  assign _T_296 = {_T_260_3,_T_260_2,_T_260_1,_T_260_0}; // @[SpiReceiver.scala 68:36:@84.4]
  assign _T_299 = {_T_260_7,_T_260_6,_T_260_5,_T_260_4}; // @[SpiReceiver.scala 68:36:@87.4]
  assign _GEN_0 = 3'h0 == _T_291 ? io_SPI_DI : _T_189_0; // @[SpiReceiver.scala 71:29:@91.4]
  assign _GEN_1 = 3'h1 == _T_291 ? io_SPI_DI : _T_189_1; // @[SpiReceiver.scala 71:29:@91.4]
  assign _GEN_2 = 3'h2 == _T_291 ? io_SPI_DI : _T_189_2; // @[SpiReceiver.scala 71:29:@91.4]
  assign _GEN_3 = 3'h3 == _T_291 ? io_SPI_DI : _T_189_3; // @[SpiReceiver.scala 71:29:@91.4]
  assign _GEN_4 = 3'h4 == _T_291 ? io_SPI_DI : _T_189_4; // @[SpiReceiver.scala 71:29:@91.4]
  assign _GEN_5 = 3'h5 == _T_291 ? io_SPI_DI : _T_189_5; // @[SpiReceiver.scala 71:29:@91.4]
  assign _GEN_6 = 3'h6 == _T_291 ? io_SPI_DI : _T_189_6; // @[SpiReceiver.scala 71:29:@91.4]
  assign _GEN_7 = 3'h7 == _T_291 ? io_SPI_DI : _T_189_7; // @[SpiReceiver.scala 71:29:@91.4]
  assign _T_305 = _T_291 + 3'h1; // @[SpiReceiver.scala 72:36:@92.4]
  assign _T_306 = _T_291 + 3'h1; // @[SpiReceiver.scala 72:36:@93.4]
  assign _T_308 = _T_291 == 3'h0; // @[SpiReceiver.scala 74:26:@95.4]
  assign _T_310 = _T_291 == 3'h1; // @[SpiReceiver.scala 77:32:@107.6]
  assign _T_311 = 3'h0 == _T_41; // @[Conditional.scala 37:30:@109.8]
  assign _T_312 = 3'h1 == _T_41; // @[Conditional.scala 37:30:@114.10]
  assign _T_315 = _T_260_0 == 1'h0; // @[SpiReceiver.scala 84:40:@117.12]
  assign _T_318 = _T_315 & _T_260_1; // @[SpiReceiver.scala 84:52:@119.12]
  assign _GEN_8 = _T_318 ? 3'h2 : _T_41; // @[SpiReceiver.scala 84:81:@120.12]
  assign _GEN_9 = _T_318 ? _T_260_2 : _T_64_0; // @[SpiReceiver.scala 84:81:@120.12]
  assign _GEN_10 = _T_318 ? _T_260_3 : _T_64_1; // @[SpiReceiver.scala 84:81:@120.12]
  assign _GEN_11 = _T_318 ? _T_260_4 : _T_64_2; // @[SpiReceiver.scala 84:81:@120.12]
  assign _GEN_12 = _T_318 ? _T_260_5 : _T_64_3; // @[SpiReceiver.scala 84:81:@120.12]
  assign _GEN_13 = _T_318 ? _T_260_6 : _T_64_4; // @[SpiReceiver.scala 84:81:@120.12]
  assign _GEN_14 = _T_318 ? _T_260_7 : _T_64_5; // @[SpiReceiver.scala 84:81:@120.12]
  assign _GEN_15 = _T_318 ? 8'h0 : _T_60; // @[SpiReceiver.scala 84:81:@120.12]
  assign _T_332 = 3'h2 == _T_41; // @[Conditional.scala 37:30:@132.12]
  assign _T_334 = 8'h0 == _T_60; // @[Conditional.scala 37:30:@134.14]
  assign _T_352 = 8'h1 == _T_60; // @[Conditional.scala 37:30:@146.16]
  assign _T_370 = 8'h2 == _T_60; // @[Conditional.scala 37:30:@158.18]
  assign _T_388 = 8'h3 == _T_60; // @[Conditional.scala 37:30:@170.20]
  assign _GEN_16 = _T_388 ? _T_260_0 : _T_76_24; // @[Conditional.scala 39:67:@171.20]
  assign _GEN_17 = _T_388 ? _T_260_1 : _T_76_25; // @[Conditional.scala 39:67:@171.20]
  assign _GEN_18 = _T_388 ? _T_260_2 : _T_76_26; // @[Conditional.scala 39:67:@171.20]
  assign _GEN_19 = _T_388 ? _T_260_3 : _T_76_27; // @[Conditional.scala 39:67:@171.20]
  assign _GEN_20 = _T_388 ? _T_260_4 : _T_76_28; // @[Conditional.scala 39:67:@171.20]
  assign _GEN_21 = _T_388 ? _T_260_5 : _T_76_29; // @[Conditional.scala 39:67:@171.20]
  assign _GEN_22 = _T_388 ? _T_260_6 : _T_76_30; // @[Conditional.scala 39:67:@171.20]
  assign _GEN_23 = _T_388 ? _T_260_7 : _T_76_31; // @[Conditional.scala 39:67:@171.20]
  assign _GEN_24 = _T_370 ? _T_260_0 : _T_76_16; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_25 = _T_370 ? _T_260_1 : _T_76_17; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_26 = _T_370 ? _T_260_2 : _T_76_18; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_27 = _T_370 ? _T_260_3 : _T_76_19; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_28 = _T_370 ? _T_260_4 : _T_76_20; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_29 = _T_370 ? _T_260_5 : _T_76_21; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_30 = _T_370 ? _T_260_6 : _T_76_22; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_31 = _T_370 ? _T_260_7 : _T_76_23; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_32 = _T_370 ? _T_76_24 : _GEN_16; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_33 = _T_370 ? _T_76_25 : _GEN_17; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_34 = _T_370 ? _T_76_26 : _GEN_18; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_35 = _T_370 ? _T_76_27 : _GEN_19; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_36 = _T_370 ? _T_76_28 : _GEN_20; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_37 = _T_370 ? _T_76_29 : _GEN_21; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_38 = _T_370 ? _T_76_30 : _GEN_22; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_39 = _T_370 ? _T_76_31 : _GEN_23; // @[Conditional.scala 39:67:@159.18]
  assign _GEN_40 = _T_352 ? _T_260_0 : _T_76_8; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_41 = _T_352 ? _T_260_1 : _T_76_9; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_42 = _T_352 ? _T_260_2 : _T_76_10; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_43 = _T_352 ? _T_260_3 : _T_76_11; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_44 = _T_352 ? _T_260_4 : _T_76_12; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_45 = _T_352 ? _T_260_5 : _T_76_13; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_46 = _T_352 ? _T_260_6 : _T_76_14; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_47 = _T_352 ? _T_260_7 : _T_76_15; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_48 = _T_352 ? _T_76_16 : _GEN_24; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_49 = _T_352 ? _T_76_17 : _GEN_25; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_50 = _T_352 ? _T_76_18 : _GEN_26; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_51 = _T_352 ? _T_76_19 : _GEN_27; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_52 = _T_352 ? _T_76_20 : _GEN_28; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_53 = _T_352 ? _T_76_21 : _GEN_29; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_54 = _T_352 ? _T_76_22 : _GEN_30; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_55 = _T_352 ? _T_76_23 : _GEN_31; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_56 = _T_352 ? _T_76_24 : _GEN_32; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_57 = _T_352 ? _T_76_25 : _GEN_33; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_58 = _T_352 ? _T_76_26 : _GEN_34; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_59 = _T_352 ? _T_76_27 : _GEN_35; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_60 = _T_352 ? _T_76_28 : _GEN_36; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_61 = _T_352 ? _T_76_29 : _GEN_37; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_62 = _T_352 ? _T_76_30 : _GEN_38; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_63 = _T_352 ? _T_76_31 : _GEN_39; // @[Conditional.scala 39:67:@147.16]
  assign _GEN_64 = _T_334 ? _T_260_0 : _T_76_0; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_65 = _T_334 ? _T_260_1 : _T_76_1; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_66 = _T_334 ? _T_260_2 : _T_76_2; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_67 = _T_334 ? _T_260_3 : _T_76_3; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_68 = _T_334 ? _T_260_4 : _T_76_4; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_69 = _T_334 ? _T_260_5 : _T_76_5; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_70 = _T_334 ? _T_260_6 : _T_76_6; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_71 = _T_334 ? _T_260_7 : _T_76_7; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_72 = _T_334 ? _T_76_8 : _GEN_40; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_73 = _T_334 ? _T_76_9 : _GEN_41; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_74 = _T_334 ? _T_76_10 : _GEN_42; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_75 = _T_334 ? _T_76_11 : _GEN_43; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_76 = _T_334 ? _T_76_12 : _GEN_44; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_77 = _T_334 ? _T_76_13 : _GEN_45; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_78 = _T_334 ? _T_76_14 : _GEN_46; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_79 = _T_334 ? _T_76_15 : _GEN_47; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_80 = _T_334 ? _T_76_16 : _GEN_48; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_81 = _T_334 ? _T_76_17 : _GEN_49; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_82 = _T_334 ? _T_76_18 : _GEN_50; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_83 = _T_334 ? _T_76_19 : _GEN_51; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_84 = _T_334 ? _T_76_20 : _GEN_52; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_85 = _T_334 ? _T_76_21 : _GEN_53; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_86 = _T_334 ? _T_76_22 : _GEN_54; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_87 = _T_334 ? _T_76_23 : _GEN_55; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_88 = _T_334 ? _T_76_24 : _GEN_56; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_89 = _T_334 ? _T_76_25 : _GEN_57; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_90 = _T_334 ? _T_76_26 : _GEN_58; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_91 = _T_334 ? _T_76_27 : _GEN_59; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_92 = _T_334 ? _T_76_28 : _GEN_60; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_93 = _T_334 ? _T_76_29 : _GEN_61; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_94 = _T_334 ? _T_76_30 : _GEN_62; // @[Conditional.scala 40:58:@135.14]
  assign _GEN_95 = _T_334 ? _T_76_31 : _GEN_63; // @[Conditional.scala 40:58:@135.14]
  assign _T_406 = _T_60 + 8'h1; // @[SpiReceiver.scala 110:40:@181.14]
  assign _T_407 = _T_60 + 8'h1; // @[SpiReceiver.scala 110:40:@182.14]
  assign _T_409 = _T_60 == 8'h3; // @[SpiReceiver.scala 111:34:@184.14]
  assign _GEN_96 = _T_409 ? 3'h3 : _T_41; // @[SpiReceiver.scala 111:43:@185.14]
  assign _GEN_97 = _T_409 ? 8'h0 : _T_407; // @[SpiReceiver.scala 111:43:@185.14]
  assign _T_414 = 3'h3 == _T_41; // @[Conditional.scala 37:30:@196.14]
  assign _T_435 = _T_115 == 6'h18; // @[SpiReceiver.scala 122:52:@211.16]
  assign _T_436 = _T_435 ? 3'h4 : 3'h1; // @[SpiReceiver.scala 122:33:@212.16]
  assign _GEN_98 = _T_414 ? _T_260_7 : _T_57; // @[Conditional.scala 39:67:@197.14]
  assign _GEN_105 = _T_414 ? _T_436 : _T_41; // @[Conditional.scala 39:67:@197.14]
  assign _GEN_106 = _T_332 ? _GEN_64 : _T_76_0; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_107 = _T_332 ? _GEN_65 : _T_76_1; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_108 = _T_332 ? _GEN_66 : _T_76_2; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_109 = _T_332 ? _GEN_67 : _T_76_3; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_110 = _T_332 ? _GEN_68 : _T_76_4; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_111 = _T_332 ? _GEN_69 : _T_76_5; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_112 = _T_332 ? _GEN_70 : _T_76_6; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_113 = _T_332 ? _GEN_71 : _T_76_7; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_114 = _T_332 ? _GEN_72 : _T_76_8; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_115 = _T_332 ? _GEN_73 : _T_76_9; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_116 = _T_332 ? _GEN_74 : _T_76_10; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_117 = _T_332 ? _GEN_75 : _T_76_11; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_118 = _T_332 ? _GEN_76 : _T_76_12; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_119 = _T_332 ? _GEN_77 : _T_76_13; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_120 = _T_332 ? _GEN_78 : _T_76_14; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_121 = _T_332 ? _GEN_79 : _T_76_15; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_122 = _T_332 ? _GEN_80 : _T_76_16; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_123 = _T_332 ? _GEN_81 : _T_76_17; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_124 = _T_332 ? _GEN_82 : _T_76_18; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_125 = _T_332 ? _GEN_83 : _T_76_19; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_126 = _T_332 ? _GEN_84 : _T_76_20; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_127 = _T_332 ? _GEN_85 : _T_76_21; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_128 = _T_332 ? _GEN_86 : _T_76_22; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_129 = _T_332 ? _GEN_87 : _T_76_23; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_130 = _T_332 ? _GEN_88 : _T_76_24; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_131 = _T_332 ? _GEN_89 : _T_76_25; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_132 = _T_332 ? _GEN_90 : _T_76_26; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_133 = _T_332 ? _GEN_91 : _T_76_27; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_134 = _T_332 ? _GEN_92 : _T_76_28; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_135 = _T_332 ? _GEN_93 : _T_76_29; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_136 = _T_332 ? _GEN_94 : _T_76_30; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_137 = _T_332 ? _GEN_95 : _T_76_31; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_138 = _T_332 ? _GEN_97 : _T_60; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_139 = _T_332 ? _GEN_96 : _GEN_105; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_140 = _T_332 ? _T_57 : _GEN_98; // @[Conditional.scala 39:67:@133.12]
  assign _GEN_147 = _T_312 ? 1'h0 : _GEN_140; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_148 = _T_312 ? _GEN_8 : _GEN_139; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_149 = _T_312 ? _GEN_9 : _T_64_0; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_150 = _T_312 ? _GEN_10 : _T_64_1; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_151 = _T_312 ? _GEN_11 : _T_64_2; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_152 = _T_312 ? _GEN_12 : _T_64_3; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_153 = _T_312 ? _GEN_13 : _T_64_4; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_154 = _T_312 ? _GEN_14 : _T_64_5; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_155 = _T_312 ? _GEN_15 : _GEN_138; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_156 = _T_312 ? _T_76_0 : _GEN_106; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_157 = _T_312 ? _T_76_1 : _GEN_107; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_158 = _T_312 ? _T_76_2 : _GEN_108; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_159 = _T_312 ? _T_76_3 : _GEN_109; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_160 = _T_312 ? _T_76_4 : _GEN_110; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_161 = _T_312 ? _T_76_5 : _GEN_111; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_162 = _T_312 ? _T_76_6 : _GEN_112; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_163 = _T_312 ? _T_76_7 : _GEN_113; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_164 = _T_312 ? _T_76_8 : _GEN_114; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_165 = _T_312 ? _T_76_9 : _GEN_115; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_166 = _T_312 ? _T_76_10 : _GEN_116; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_167 = _T_312 ? _T_76_11 : _GEN_117; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_168 = _T_312 ? _T_76_12 : _GEN_118; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_169 = _T_312 ? _T_76_13 : _GEN_119; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_170 = _T_312 ? _T_76_14 : _GEN_120; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_171 = _T_312 ? _T_76_15 : _GEN_121; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_172 = _T_312 ? _T_76_16 : _GEN_122; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_173 = _T_312 ? _T_76_17 : _GEN_123; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_174 = _T_312 ? _T_76_18 : _GEN_124; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_175 = _T_312 ? _T_76_19 : _GEN_125; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_176 = _T_312 ? _T_76_20 : _GEN_126; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_177 = _T_312 ? _T_76_21 : _GEN_127; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_178 = _T_312 ? _T_76_22 : _GEN_128; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_179 = _T_312 ? _T_76_23 : _GEN_129; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_180 = _T_312 ? _T_76_24 : _GEN_130; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_181 = _T_312 ? _T_76_25 : _GEN_131; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_182 = _T_312 ? _T_76_26 : _GEN_132; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_183 = _T_312 ? _T_76_27 : _GEN_133; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_184 = _T_312 ? _T_76_28 : _GEN_134; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_185 = _T_312 ? _T_76_29 : _GEN_135; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_186 = _T_312 ? _T_76_30 : _GEN_136; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_187 = _T_312 ? _T_76_31 : _GEN_137; // @[Conditional.scala 39:67:@115.10]
  assign _GEN_194 = _T_311 ? 3'h1 : _GEN_148; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_195 = _T_311 ? _T_57 : _GEN_147; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_196 = _T_311 ? _T_64_0 : _GEN_149; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_197 = _T_311 ? _T_64_1 : _GEN_150; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_198 = _T_311 ? _T_64_2 : _GEN_151; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_199 = _T_311 ? _T_64_3 : _GEN_152; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_200 = _T_311 ? _T_64_4 : _GEN_153; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_201 = _T_311 ? _T_64_5 : _GEN_154; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_202 = _T_311 ? _T_60 : _GEN_155; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_203 = _T_311 ? _T_76_0 : _GEN_156; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_204 = _T_311 ? _T_76_1 : _GEN_157; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_205 = _T_311 ? _T_76_2 : _GEN_158; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_206 = _T_311 ? _T_76_3 : _GEN_159; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_207 = _T_311 ? _T_76_4 : _GEN_160; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_208 = _T_311 ? _T_76_5 : _GEN_161; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_209 = _T_311 ? _T_76_6 : _GEN_162; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_210 = _T_311 ? _T_76_7 : _GEN_163; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_211 = _T_311 ? _T_76_8 : _GEN_164; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_212 = _T_311 ? _T_76_9 : _GEN_165; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_213 = _T_311 ? _T_76_10 : _GEN_166; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_214 = _T_311 ? _T_76_11 : _GEN_167; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_215 = _T_311 ? _T_76_12 : _GEN_168; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_216 = _T_311 ? _T_76_13 : _GEN_169; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_217 = _T_311 ? _T_76_14 : _GEN_170; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_218 = _T_311 ? _T_76_15 : _GEN_171; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_219 = _T_311 ? _T_76_16 : _GEN_172; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_220 = _T_311 ? _T_76_17 : _GEN_173; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_221 = _T_311 ? _T_76_18 : _GEN_174; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_222 = _T_311 ? _T_76_19 : _GEN_175; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_223 = _T_311 ? _T_76_20 : _GEN_176; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_224 = _T_311 ? _T_76_21 : _GEN_177; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_225 = _T_311 ? _T_76_22 : _GEN_178; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_226 = _T_311 ? _T_76_23 : _GEN_179; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_227 = _T_311 ? _T_76_24 : _GEN_180; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_228 = _T_311 ? _T_76_25 : _GEN_181; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_229 = _T_311 ? _T_76_26 : _GEN_182; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_230 = _T_311 ? _T_76_27 : _GEN_183; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_231 = _T_311 ? _T_76_28 : _GEN_184; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_232 = _T_311 ? _T_76_29 : _GEN_185; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_233 = _T_311 ? _T_76_30 : _GEN_186; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_234 = _T_311 ? _T_76_31 : _GEN_187; // @[Conditional.scala 40:58:@110.8]
  assign _GEN_241 = _T_310 ? _GEN_194 : _T_41; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_242 = _T_310 ? _GEN_195 : _T_57; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_243 = _T_310 ? _GEN_196 : _T_64_0; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_244 = _T_310 ? _GEN_197 : _T_64_1; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_245 = _T_310 ? _GEN_198 : _T_64_2; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_246 = _T_310 ? _GEN_199 : _T_64_3; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_247 = _T_310 ? _GEN_200 : _T_64_4; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_248 = _T_310 ? _GEN_201 : _T_64_5; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_249 = _T_310 ? _GEN_202 : _T_60; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_250 = _T_310 ? _GEN_203 : _T_76_0; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_251 = _T_310 ? _GEN_204 : _T_76_1; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_252 = _T_310 ? _GEN_205 : _T_76_2; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_253 = _T_310 ? _GEN_206 : _T_76_3; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_254 = _T_310 ? _GEN_207 : _T_76_4; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_255 = _T_310 ? _GEN_208 : _T_76_5; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_256 = _T_310 ? _GEN_209 : _T_76_6; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_257 = _T_310 ? _GEN_210 : _T_76_7; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_258 = _T_310 ? _GEN_211 : _T_76_8; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_259 = _T_310 ? _GEN_212 : _T_76_9; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_260 = _T_310 ? _GEN_213 : _T_76_10; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_261 = _T_310 ? _GEN_214 : _T_76_11; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_262 = _T_310 ? _GEN_215 : _T_76_12; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_263 = _T_310 ? _GEN_216 : _T_76_13; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_264 = _T_310 ? _GEN_217 : _T_76_14; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_265 = _T_310 ? _GEN_218 : _T_76_15; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_266 = _T_310 ? _GEN_219 : _T_76_16; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_267 = _T_310 ? _GEN_220 : _T_76_17; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_268 = _T_310 ? _GEN_221 : _T_76_18; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_269 = _T_310 ? _GEN_222 : _T_76_19; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_270 = _T_310 ? _GEN_223 : _T_76_20; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_271 = _T_310 ? _GEN_224 : _T_76_21; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_272 = _T_310 ? _GEN_225 : _T_76_22; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_273 = _T_310 ? _GEN_226 : _T_76_23; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_274 = _T_310 ? _GEN_227 : _T_76_24; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_275 = _T_310 ? _GEN_228 : _T_76_25; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_276 = _T_310 ? _GEN_229 : _T_76_26; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_277 = _T_310 ? _GEN_230 : _T_76_27; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_278 = _T_310 ? _GEN_231 : _T_76_28; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_279 = _T_310 ? _GEN_232 : _T_76_29; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_280 = _T_310 ? _GEN_233 : _T_76_30; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_281 = _T_310 ? _GEN_234 : _T_76_31; // @[SpiReceiver.scala 77:40:@108.6]
  assign _GEN_288 = _T_308 ? _T_189_0 : _T_260_0; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_289 = _T_308 ? _T_189_1 : _T_260_1; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_290 = _T_308 ? _T_189_2 : _T_260_2; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_291 = _T_308 ? _T_189_3 : _T_260_3; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_292 = _T_308 ? _T_189_4 : _T_260_4; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_293 = _T_308 ? _T_189_5 : _T_260_5; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_294 = _T_308 ? _T_189_6 : _T_260_6; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_295 = _T_308 ? _T_189_7 : _T_260_7; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_296 = _T_308 ? _T_41 : _GEN_241; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_297 = _T_308 ? _T_57 : _GEN_242; // @[SpiReceiver.scala 74:34:@96.4]
  assign _GEN_304 = _T_308 ? _T_60 : _GEN_249; // @[SpiReceiver.scala 74:34:@96.4]
  assign _T_437 = $unsigned(io_SPI_CLK); // @[SpiReceiver.scala 131:32:@216.4]
  assign _T_442 = _T_440 == 1'h0; // @[SpiReceiver.scala 24:14:@220.4]
  assign _T_443 = _T_437 & _T_442; // @[SpiReceiver.scala 24:11:@221.4]
  assign _GEN_343 = _T_443 ? 1'h0 : resetSignal; // @[SpiReceiver.scala 131:48:@222.4]
  assign io_SPI_DO = io_DO; // @[SpiReceiver.scala 39:15:@9.4]
  assign io_DI = io_SPI_DI; // @[SpiReceiver.scala 38:11:@8.4]
  assign io_CommandReadFinished = _T_41 > 3'h1; // @[SpiReceiver.scala 64:32:@78.4]
  assign io_ArgumentReadFinished = _T_41 > 3'h2; // @[SpiReceiver.scala 65:33:@80.4]
  assign io_ReadSuccess = _T_57; // @[SpiReceiver.scala 66:24:@81.4]
  assign io_Command = {_T_114,_T_112}; // @[SpiReceiver.scala 56:20:@23.4]
  assign io_CommandArgument = {_T_145,_T_130}; // @[SpiReceiver.scala 57:28:@55.4]
  assign io____counter = _T_291; // @[SpiReceiver.scala 69:23:@90.4]
  assign io____state = _T_41; // @[SpiReceiver.scala 46:21:@12.4]
  assign io____buffer = {_T_299,_T_296}; // @[SpiReceiver.scala 68:22:@89.4]
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
  resetSignal = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_41 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_57 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_60 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_64_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_64_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_64_2 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_64_3 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_64_4 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_64_5 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_76_0 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_76_1 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_76_2 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_76_3 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_76_4 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_76_5 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_76_6 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_76_7 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_76_8 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_76_9 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_76_10 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_76_11 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_76_12 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_76_13 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_76_14 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_76_15 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_76_16 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_76_17 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_76_18 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_76_19 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_76_20 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_76_21 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_76_22 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_76_23 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_76_24 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_76_25 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_76_26 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_76_27 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_76_28 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_76_29 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_76_30 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_76_31 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_189_0 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_189_1 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_189_2 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_189_3 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_189_4 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_189_5 = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_189_6 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_189_7 = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_260_0 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_260_1 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_260_2 = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_260_3 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_260_4 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_260_5 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_260_6 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_260_7 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_291 = _RAND_58[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_440 = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      resetSignal <= 1'h1;
    end else begin
      if (_T_443) begin
        resetSignal <= 1'h0;
      end
    end
    _T_440 <= $unsigned(io_SPI_CLK);
  end
  always @(posedge io_SPI_CLK) begin
    if (resetSignal) begin
      _T_41 <= 3'h0;
    end else begin
      if (!(_T_308)) begin
        if (_T_310) begin
          if (_T_311) begin
            _T_41 <= 3'h1;
          end else begin
            if (_T_312) begin
              if (_T_318) begin
                _T_41 <= 3'h2;
              end
            end else begin
              if (_T_332) begin
                if (_T_409) begin
                  _T_41 <= 3'h3;
                end
              end else begin
                if (_T_414) begin
                  if (_T_435) begin
                    _T_41 <= 3'h4;
                  end else begin
                    _T_41 <= 3'h1;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (resetSignal) begin
      _T_57 <= 1'h0;
    end else begin
      if (!(_T_308)) begin
        if (_T_310) begin
          if (!(_T_311)) begin
            if (_T_312) begin
              _T_57 <= 1'h0;
            end else begin
              if (!(_T_332)) begin
                if (_T_414) begin
                  _T_57 <= _T_260_7;
                end
              end
            end
          end
        end
      end
    end
    if (resetSignal) begin
      _T_60 <= 8'h0;
    end else begin
      if (!(_T_308)) begin
        if (_T_310) begin
          if (!(_T_311)) begin
            if (_T_312) begin
              if (_T_318) begin
                _T_60 <= 8'h0;
              end
            end else begin
              if (_T_332) begin
                if (_T_409) begin
                  _T_60 <= 8'h0;
                end else begin
                  _T_60 <= _T_407;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (_T_312) begin
            if (_T_318) begin
              _T_64_0 <= _T_260_2;
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (_T_312) begin
            if (_T_318) begin
              _T_64_1 <= _T_260_3;
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (_T_312) begin
            if (_T_318) begin
              _T_64_2 <= _T_260_4;
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (_T_312) begin
            if (_T_318) begin
              _T_64_3 <= _T_260_5;
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (_T_312) begin
            if (_T_318) begin
              _T_64_4 <= _T_260_6;
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (_T_312) begin
            if (_T_318) begin
              _T_64_5 <= _T_260_7;
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (_T_334) begin
                _T_76_0 <= _T_260_0;
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (_T_334) begin
                _T_76_1 <= _T_260_1;
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (_T_334) begin
                _T_76_2 <= _T_260_2;
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (_T_334) begin
                _T_76_3 <= _T_260_3;
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (_T_334) begin
                _T_76_4 <= _T_260_4;
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (_T_334) begin
                _T_76_5 <= _T_260_5;
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (_T_334) begin
                _T_76_6 <= _T_260_6;
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (_T_334) begin
                _T_76_7 <= _T_260_7;
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (_T_352) begin
                  _T_76_8 <= _T_260_0;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (_T_352) begin
                  _T_76_9 <= _T_260_1;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (_T_352) begin
                  _T_76_10 <= _T_260_2;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (_T_352) begin
                  _T_76_11 <= _T_260_3;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (_T_352) begin
                  _T_76_12 <= _T_260_4;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (_T_352) begin
                  _T_76_13 <= _T_260_5;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (_T_352) begin
                  _T_76_14 <= _T_260_6;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (_T_352) begin
                  _T_76_15 <= _T_260_7;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (_T_370) begin
                    _T_76_16 <= _T_260_0;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (_T_370) begin
                    _T_76_17 <= _T_260_1;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (_T_370) begin
                    _T_76_18 <= _T_260_2;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (_T_370) begin
                    _T_76_19 <= _T_260_3;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (_T_370) begin
                    _T_76_20 <= _T_260_4;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (_T_370) begin
                    _T_76_21 <= _T_260_5;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (_T_370) begin
                    _T_76_22 <= _T_260_6;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (_T_370) begin
                    _T_76_23 <= _T_260_7;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (!(_T_370)) begin
                    if (_T_388) begin
                      _T_76_24 <= _T_260_0;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (!(_T_370)) begin
                    if (_T_388) begin
                      _T_76_25 <= _T_260_1;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (!(_T_370)) begin
                    if (_T_388) begin
                      _T_76_26 <= _T_260_2;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (!(_T_370)) begin
                    if (_T_388) begin
                      _T_76_27 <= _T_260_3;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (!(_T_370)) begin
                    if (_T_388) begin
                      _T_76_28 <= _T_260_4;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (!(_T_370)) begin
                    if (_T_388) begin
                      _T_76_29 <= _T_260_5;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (!(_T_370)) begin
                    if (_T_388) begin
                      _T_76_30 <= _T_260_6;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_308)) begin
      if (_T_310) begin
        if (!(_T_311)) begin
          if (!(_T_312)) begin
            if (_T_332) begin
              if (!(_T_334)) begin
                if (!(_T_352)) begin
                  if (!(_T_370)) begin
                    if (_T_388) begin
                      _T_76_31 <= _T_260_7;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (resetSignal) begin
      _T_189_0 <= 1'h1;
    end else begin
      if (3'h0 == _T_291) begin
        _T_189_0 <= io_SPI_DI;
      end
    end
    if (resetSignal) begin
      _T_189_1 <= 1'h1;
    end else begin
      if (3'h1 == _T_291) begin
        _T_189_1 <= io_SPI_DI;
      end
    end
    if (resetSignal) begin
      _T_189_2 <= 1'h1;
    end else begin
      if (3'h2 == _T_291) begin
        _T_189_2 <= io_SPI_DI;
      end
    end
    if (resetSignal) begin
      _T_189_3 <= 1'h1;
    end else begin
      if (3'h3 == _T_291) begin
        _T_189_3 <= io_SPI_DI;
      end
    end
    if (resetSignal) begin
      _T_189_4 <= 1'h1;
    end else begin
      if (3'h4 == _T_291) begin
        _T_189_4 <= io_SPI_DI;
      end
    end
    if (resetSignal) begin
      _T_189_5 <= 1'h1;
    end else begin
      if (3'h5 == _T_291) begin
        _T_189_5 <= io_SPI_DI;
      end
    end
    if (resetSignal) begin
      _T_189_6 <= 1'h1;
    end else begin
      if (3'h6 == _T_291) begin
        _T_189_6 <= io_SPI_DI;
      end
    end
    if (resetSignal) begin
      _T_189_7 <= 1'h1;
    end else begin
      if (3'h7 == _T_291) begin
        _T_189_7 <= io_SPI_DI;
      end
    end
    if (resetSignal) begin
      _T_260_0 <= 1'h1;
    end else begin
      if (_T_308) begin
        _T_260_0 <= _T_189_0;
      end
    end
    if (resetSignal) begin
      _T_260_1 <= 1'h1;
    end else begin
      if (_T_308) begin
        _T_260_1 <= _T_189_1;
      end
    end
    if (resetSignal) begin
      _T_260_2 <= 1'h1;
    end else begin
      if (_T_308) begin
        _T_260_2 <= _T_189_2;
      end
    end
    if (resetSignal) begin
      _T_260_3 <= 1'h1;
    end else begin
      if (_T_308) begin
        _T_260_3 <= _T_189_3;
      end
    end
    if (resetSignal) begin
      _T_260_4 <= 1'h1;
    end else begin
      if (_T_308) begin
        _T_260_4 <= _T_189_4;
      end
    end
    if (resetSignal) begin
      _T_260_5 <= 1'h1;
    end else begin
      if (_T_308) begin
        _T_260_5 <= _T_189_5;
      end
    end
    if (resetSignal) begin
      _T_260_6 <= 1'h1;
    end else begin
      if (_T_308) begin
        _T_260_6 <= _T_189_6;
      end
    end
    if (resetSignal) begin
      _T_260_7 <= 1'h1;
    end else begin
      if (_T_308) begin
        _T_260_7 <= _T_189_7;
      end
    end
    if (resetSignal) begin
      _T_291 <= 3'h1;
    end else begin
      _T_291 <= _T_306;
    end
  end
endmodule
