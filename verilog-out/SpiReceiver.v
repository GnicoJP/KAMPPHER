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
  reg  commandBuffer [0:5]; // @[SpiReceiver.scala 50:36:@18.4]
  reg [31:0] _RAND_0;
  wire  commandBuffer__T_95_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_95_addr; // @[SpiReceiver.scala 50:36:@18.4]
  reg [31:0] _RAND_1;
  wire  commandBuffer__T_97_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_97_addr; // @[SpiReceiver.scala 50:36:@18.4]
  reg [31:0] _RAND_2;
  wire  commandBuffer__T_99_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_99_addr; // @[SpiReceiver.scala 50:36:@18.4]
  reg [31:0] _RAND_3;
  wire  commandBuffer__T_101_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_101_addr; // @[SpiReceiver.scala 50:36:@18.4]
  reg [31:0] _RAND_4;
  wire  commandBuffer__T_103_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_103_addr; // @[SpiReceiver.scala 50:36:@18.4]
  reg [31:0] _RAND_5;
  wire  commandBuffer__T_105_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_105_addr; // @[SpiReceiver.scala 50:36:@18.4]
  reg [31:0] _RAND_6;
  wire  commandBuffer__T_260_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_260_addr; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_260_mask; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_260_en; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_263_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_263_addr; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_263_mask; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_263_en; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_266_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_266_addr; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_266_mask; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_266_en; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_269_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_269_addr; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_269_mask; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_269_en; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_272_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_272_addr; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_272_mask; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_272_en; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_275_data; // @[SpiReceiver.scala 50:36:@18.4]
  wire [2:0] commandBuffer__T_275_addr; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_275_mask; // @[SpiReceiver.scala 50:36:@18.4]
  wire  commandBuffer__T_275_en; // @[SpiReceiver.scala 50:36:@18.4]
  reg  commandArgumentBuffer [0:31]; // @[SpiReceiver.scala 51:44:@19.4]
  reg [31:0] _RAND_7;
  wire  commandArgumentBuffer__T_107_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_107_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_109_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_109_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_111_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_111_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_113_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_113_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_115_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_115_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_117_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_117_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_119_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_119_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_121_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_121_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_123_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_123_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_125_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_125_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_127_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_127_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_129_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_129_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_131_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_131_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_133_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_133_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_135_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_135_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_137_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_137_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_139_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_139_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_141_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_141_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_143_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_143_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_145_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_145_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_147_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_147_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_149_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_149_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_151_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_151_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_153_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_153_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_155_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_155_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_157_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_157_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_159_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_159_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_161_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_161_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_163_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_163_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_165_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_165_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_167_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_167_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_169_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_169_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_282_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_282_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_282_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_282_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_285_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_285_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_285_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_285_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_288_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_288_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_288_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_288_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_291_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_291_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_291_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_291_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_294_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_294_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_294_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_294_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_297_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_297_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_297_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_297_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_300_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_300_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_300_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_300_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_303_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_303_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_303_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_303_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_308_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_308_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_308_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_308_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_311_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_311_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_311_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_311_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_314_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_314_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_314_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_314_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_317_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_317_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_317_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_317_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_320_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_320_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_320_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_320_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_323_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_323_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_323_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_323_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_326_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_326_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_326_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_326_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_329_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_329_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_329_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_329_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_334_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_334_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_334_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_334_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_337_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_337_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_337_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_337_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_340_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_340_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_340_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_340_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_343_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_343_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_343_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_343_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_346_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_346_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_346_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_346_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_349_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_349_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_349_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_349_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_352_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_352_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_352_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_352_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_355_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_355_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_355_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_355_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_360_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_360_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_360_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_360_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_363_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_363_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_363_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_363_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_366_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_366_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_366_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_366_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_369_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_369_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_369_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_369_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_372_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_372_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_372_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_372_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_375_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_375_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_375_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_375_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_378_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_378_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_378_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_378_en; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_381_data; // @[SpiReceiver.scala 51:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_381_addr; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_381_mask; // @[SpiReceiver.scala 51:44:@19.4]
  wire  commandArgumentBuffer__T_381_en; // @[SpiReceiver.scala 51:44:@19.4]
  reg [1:0] state; // @[SpiReceiver.scala 39:24:@10.4]
  reg [31:0] _RAND_8;
  reg  readSuccess; // @[SpiReceiver.scala 43:30:@13.4]
  reg [31:0] _RAND_9;
  reg [7:0] counter; // @[SpiReceiver.scala 45:26:@14.4]
  reg [31:0] _RAND_10;
  reg  writeBacked; // @[SpiReceiver.scala 46:30:@15.4]
  reg [31:0] _RAND_11;
  wire  commandVec_2; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@25.4]
  wire  commandVec_1; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@23.4]
  wire  commandVec_0; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@21.4]
  wire [2:0] _T_171; // @[SpiReceiver.scala 58:30:@97.4]
  wire  commandVec_5; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@31.4]
  wire  commandVec_4; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@29.4]
  wire  commandVec_3; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@27.4]
  wire [2:0] _T_173; // @[SpiReceiver.scala 58:30:@99.4]
  wire [5:0] _T_174; // @[SpiReceiver.scala 58:30:@100.4]
  wire  commandArgumentVec_1; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@35.4]
  wire  commandArgumentVec_0; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@33.4]
  wire  commandArgumentVec_3; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@39.4]
  wire  commandArgumentVec_2; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@37.4]
  wire  commandArgumentVec_5; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@43.4]
  wire  commandArgumentVec_4; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@41.4]
  wire  commandArgumentVec_7; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@47.4]
  wire  commandArgumentVec_6; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@45.4]
  wire [7:0] _T_181; // @[SpiReceiver.scala 59:46:@108.4]
  wire  commandArgumentVec_9; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@51.4]
  wire  commandArgumentVec_8; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@49.4]
  wire  commandArgumentVec_11; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@55.4]
  wire  commandArgumentVec_10; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@53.4]
  wire  commandArgumentVec_13; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@59.4]
  wire  commandArgumentVec_12; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@57.4]
  wire  commandArgumentVec_15; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@63.4]
  wire  commandArgumentVec_14; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@61.4]
  wire [15:0] _T_189; // @[SpiReceiver.scala 59:46:@116.4]
  wire  commandArgumentVec_17; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@67.4]
  wire  commandArgumentVec_16; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@65.4]
  wire  commandArgumentVec_19; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@71.4]
  wire  commandArgumentVec_18; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@69.4]
  wire  commandArgumentVec_21; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@75.4]
  wire  commandArgumentVec_20; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@73.4]
  wire  commandArgumentVec_23; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@79.4]
  wire  commandArgumentVec_22; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@77.4]
  wire [7:0] _T_196; // @[SpiReceiver.scala 59:46:@123.4]
  wire  commandArgumentVec_25; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@83.4]
  wire  commandArgumentVec_24; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@81.4]
  wire  commandArgumentVec_27; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@87.4]
  wire  commandArgumentVec_26; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@85.4]
  wire  commandArgumentVec_29; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@91.4]
  wire  commandArgumentVec_28; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@89.4]
  wire  commandArgumentVec_31; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@95.4]
  wire  commandArgumentVec_30; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@93.4]
  wire [15:0] _T_204; // @[SpiReceiver.scala 59:46:@131.4]
  reg  _T_209_0; // @[SpiReceiver.scala 62:29:@134.4]
  reg [31:0] _RAND_12;
  reg  _T_209_1; // @[SpiReceiver.scala 62:29:@134.4]
  reg [31:0] _RAND_13;
  reg  _T_209_2; // @[SpiReceiver.scala 62:29:@134.4]
  reg [31:0] _RAND_14;
  reg  _T_209_3; // @[SpiReceiver.scala 62:29:@134.4]
  reg [31:0] _RAND_15;
  reg  _T_209_4; // @[SpiReceiver.scala 62:29:@134.4]
  reg [31:0] _RAND_16;
  reg  _T_209_5; // @[SpiReceiver.scala 62:29:@134.4]
  reg [31:0] _RAND_17;
  reg  _T_209_6; // @[SpiReceiver.scala 62:29:@134.4]
  reg [31:0] _RAND_18;
  reg  _T_209_7; // @[SpiReceiver.scala 62:29:@134.4]
  reg [31:0] _RAND_19;
  reg [2:0] byteBuffer_Counter; // @[SpiReceiver.scala 63:34:@135.4]
  reg [31:0] _RAND_20;
  wire [3:0] _T_226; // @[SpiReceiver.scala 66:37:@140.4]
  wire [3:0] _T_229; // @[SpiReceiver.scala 66:37:@143.4]
  wire [7:0] byteBuffer_Buffer; // @[SpiReceiver.scala 66:37:@144.4]
  wire [3:0] _T_242; // @[SpiReceiver.scala 76:36:@161.4]
  wire [2:0] _T_243; // @[SpiReceiver.scala 76:36:@162.4]
  wire  _T_246; // @[SpiReceiver.scala 80:22:@165.4]
  wire  _T_248; // @[SpiReceiver.scala 80:56:@166.4]
  wire  _T_249; // @[SpiReceiver.scala 80:34:@167.4]
  wire  _T_250; // @[Conditional.scala 37:30:@169.6]
  wire  _T_251; // @[SpiReceiver.scala 83:39:@171.8]
  wire  _T_253; // @[SpiReceiver.scala 83:43:@172.8]
  wire  _T_254; // @[SpiReceiver.scala 83:75:@173.8]
  wire  _T_257; // @[SpiReceiver.scala 83:55:@175.8]
  wire  _T_274; // @[SpiReceiver.scala 86:67:@193.10]
  wire [1:0] _GEN_8; // @[SpiReceiver.scala 83:91:@176.8]
  wire  _GEN_12; // @[SpiReceiver.scala 83:91:@176.8]
  wire [7:0] _GEN_23; // @[SpiReceiver.scala 83:91:@176.8]
  wire  _T_277; // @[Conditional.scala 37:30:@200.8]
  wire  _T_279; // @[Conditional.scala 37:30:@202.10]
  wire  _T_305; // @[Conditional.scala 37:30:@230.12]
  wire  _T_331; // @[Conditional.scala 37:30:@258.14]
  wire  _T_357; // @[Conditional.scala 37:30:@286.16]
  wire  _GEN_64; // @[Conditional.scala 39:67:@259.14]
  wire  _GEN_102; // @[Conditional.scala 39:67:@231.12]
  wire  _GEN_121; // @[Conditional.scala 39:67:@231.12]
  wire  _GEN_158; // @[Conditional.scala 40:58:@203.10]
  wire  _GEN_177; // @[Conditional.scala 40:58:@203.10]
  wire  _GEN_196; // @[Conditional.scala 40:58:@203.10]
  wire [8:0] _T_383; // @[SpiReceiver.scala 109:36:@313.10]
  wire [7:0] _T_384; // @[SpiReceiver.scala 109:36:@314.10]
  wire  _T_386; // @[SpiReceiver.scala 110:30:@316.10]
  wire [1:0] _GEN_213; // @[SpiReceiver.scala 110:39:@317.10]
  wire [7:0] _GEN_214; // @[SpiReceiver.scala 110:39:@317.10]
  wire  _T_391; // @[Conditional.scala 37:30:@328.10]
  wire  _T_419; // @[SpiReceiver.scala 121:48:@356.12]
  wire [1:0] _T_420; // @[SpiReceiver.scala 121:29:@357.12]
  wire  _GEN_215; // @[Conditional.scala 39:67:@329.10]
  wire [1:0] _GEN_230; // @[Conditional.scala 39:67:@329.10]
  wire  _GEN_233; // @[Conditional.scala 39:67:@201.8]
  wire  _GEN_251; // @[Conditional.scala 39:67:@201.8]
  wire  _GEN_270; // @[Conditional.scala 39:67:@201.8]
  wire  _GEN_289; // @[Conditional.scala 39:67:@201.8]
  wire [7:0] _GEN_306; // @[Conditional.scala 39:67:@201.8]
  wire [1:0] _GEN_307; // @[Conditional.scala 39:67:@201.8]
  wire  _GEN_308; // @[Conditional.scala 39:67:@201.8]
  wire [1:0] _GEN_323; // @[Conditional.scala 40:58:@170.6]
  wire  _GEN_326; // @[Conditional.scala 40:58:@170.6]
  wire [7:0] _GEN_338; // @[Conditional.scala 40:58:@170.6]
  wire  _GEN_341; // @[Conditional.scala 40:58:@170.6]
  wire  _GEN_359; // @[Conditional.scala 40:58:@170.6]
  wire  _GEN_378; // @[Conditional.scala 40:58:@170.6]
  wire  _GEN_397; // @[Conditional.scala 40:58:@170.6]
  wire  _GEN_414; // @[Conditional.scala 40:58:@170.6]
  wire  _T_422; // @[SpiReceiver.scala 127:35:@362.6]
  wire  _GEN_429; // @[SpiReceiver.scala 127:44:@363.6]
  wire [1:0] _GEN_430; // @[SpiReceiver.scala 80:65:@168.4]
  wire [7:0] _GEN_445; // @[SpiReceiver.scala 80:65:@168.4]
  wire  _GEN_521; // @[SpiReceiver.scala 80:65:@168.4]
  wire  _GEN_536; // @[SpiReceiver.scala 80:65:@168.4]
  reg [2:0] commandBuffer__T_95_addr_pipe_0;
  reg [31:0] _RAND_21;
  reg [2:0] commandBuffer__T_97_addr_pipe_0;
  reg [31:0] _RAND_22;
  reg [2:0] commandBuffer__T_99_addr_pipe_0;
  reg [31:0] _RAND_23;
  reg [2:0] commandBuffer__T_101_addr_pipe_0;
  reg [31:0] _RAND_24;
  reg [2:0] commandBuffer__T_103_addr_pipe_0;
  reg [31:0] _RAND_25;
  reg [2:0] commandBuffer__T_105_addr_pipe_0;
  reg [31:0] _RAND_26;
  reg [4:0] commandArgumentBuffer__T_107_addr_pipe_0;
  reg [31:0] _RAND_27;
  reg [4:0] commandArgumentBuffer__T_109_addr_pipe_0;
  reg [31:0] _RAND_28;
  reg [4:0] commandArgumentBuffer__T_111_addr_pipe_0;
  reg [31:0] _RAND_29;
  reg [4:0] commandArgumentBuffer__T_113_addr_pipe_0;
  reg [31:0] _RAND_30;
  reg [4:0] commandArgumentBuffer__T_115_addr_pipe_0;
  reg [31:0] _RAND_31;
  reg [4:0] commandArgumentBuffer__T_117_addr_pipe_0;
  reg [31:0] _RAND_32;
  reg [4:0] commandArgumentBuffer__T_119_addr_pipe_0;
  reg [31:0] _RAND_33;
  reg [4:0] commandArgumentBuffer__T_121_addr_pipe_0;
  reg [31:0] _RAND_34;
  reg [4:0] commandArgumentBuffer__T_123_addr_pipe_0;
  reg [31:0] _RAND_35;
  reg [4:0] commandArgumentBuffer__T_125_addr_pipe_0;
  reg [31:0] _RAND_36;
  reg [4:0] commandArgumentBuffer__T_127_addr_pipe_0;
  reg [31:0] _RAND_37;
  reg [4:0] commandArgumentBuffer__T_129_addr_pipe_0;
  reg [31:0] _RAND_38;
  reg [4:0] commandArgumentBuffer__T_131_addr_pipe_0;
  reg [31:0] _RAND_39;
  reg [4:0] commandArgumentBuffer__T_133_addr_pipe_0;
  reg [31:0] _RAND_40;
  reg [4:0] commandArgumentBuffer__T_135_addr_pipe_0;
  reg [31:0] _RAND_41;
  reg [4:0] commandArgumentBuffer__T_137_addr_pipe_0;
  reg [31:0] _RAND_42;
  reg [4:0] commandArgumentBuffer__T_139_addr_pipe_0;
  reg [31:0] _RAND_43;
  reg [4:0] commandArgumentBuffer__T_141_addr_pipe_0;
  reg [31:0] _RAND_44;
  reg [4:0] commandArgumentBuffer__T_143_addr_pipe_0;
  reg [31:0] _RAND_45;
  reg [4:0] commandArgumentBuffer__T_145_addr_pipe_0;
  reg [31:0] _RAND_46;
  reg [4:0] commandArgumentBuffer__T_147_addr_pipe_0;
  reg [31:0] _RAND_47;
  reg [4:0] commandArgumentBuffer__T_149_addr_pipe_0;
  reg [31:0] _RAND_48;
  reg [4:0] commandArgumentBuffer__T_151_addr_pipe_0;
  reg [31:0] _RAND_49;
  reg [4:0] commandArgumentBuffer__T_153_addr_pipe_0;
  reg [31:0] _RAND_50;
  reg [4:0] commandArgumentBuffer__T_155_addr_pipe_0;
  reg [31:0] _RAND_51;
  reg [4:0] commandArgumentBuffer__T_157_addr_pipe_0;
  reg [31:0] _RAND_52;
  reg [4:0] commandArgumentBuffer__T_159_addr_pipe_0;
  reg [31:0] _RAND_53;
  reg [4:0] commandArgumentBuffer__T_161_addr_pipe_0;
  reg [31:0] _RAND_54;
  reg [4:0] commandArgumentBuffer__T_163_addr_pipe_0;
  reg [31:0] _RAND_55;
  reg [4:0] commandArgumentBuffer__T_165_addr_pipe_0;
  reg [31:0] _RAND_56;
  reg [4:0] commandArgumentBuffer__T_167_addr_pipe_0;
  reg [31:0] _RAND_57;
  reg [4:0] commandArgumentBuffer__T_169_addr_pipe_0;
  reg [31:0] _RAND_58;
  assign commandBuffer__T_95_addr = commandBuffer__T_95_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_95_data = commandBuffer[commandBuffer__T_95_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `else
  assign commandBuffer__T_95_data = commandBuffer__T_95_addr >= 3'h6 ? _RAND_1[0:0] : commandBuffer[commandBuffer__T_95_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_97_addr = commandBuffer__T_97_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_97_data = commandBuffer[commandBuffer__T_97_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `else
  assign commandBuffer__T_97_data = commandBuffer__T_97_addr >= 3'h6 ? _RAND_2[0:0] : commandBuffer[commandBuffer__T_97_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_99_addr = commandBuffer__T_99_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_99_data = commandBuffer[commandBuffer__T_99_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `else
  assign commandBuffer__T_99_data = commandBuffer__T_99_addr >= 3'h6 ? _RAND_3[0:0] : commandBuffer[commandBuffer__T_99_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_101_addr = commandBuffer__T_101_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_101_data = commandBuffer[commandBuffer__T_101_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `else
  assign commandBuffer__T_101_data = commandBuffer__T_101_addr >= 3'h6 ? _RAND_4[0:0] : commandBuffer[commandBuffer__T_101_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_103_addr = commandBuffer__T_103_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_103_data = commandBuffer[commandBuffer__T_103_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `else
  assign commandBuffer__T_103_data = commandBuffer__T_103_addr >= 3'h6 ? _RAND_5[0:0] : commandBuffer[commandBuffer__T_103_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_105_addr = commandBuffer__T_105_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_105_data = commandBuffer[commandBuffer__T_105_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `else
  assign commandBuffer__T_105_data = commandBuffer__T_105_addr >= 3'h6 ? _RAND_6[0:0] : commandBuffer[commandBuffer__T_105_addr]; // @[SpiReceiver.scala 50:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_260_data = byteBuffer_Buffer[2];
  assign commandBuffer__T_260_addr = 3'h0;
  assign commandBuffer__T_260_mask = 1'h1;
  assign commandBuffer__T_260_en = _T_249 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_263_data = byteBuffer_Buffer[3];
  assign commandBuffer__T_263_addr = 3'h1;
  assign commandBuffer__T_263_mask = 1'h1;
  assign commandBuffer__T_263_en = _T_249 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_266_data = byteBuffer_Buffer[4];
  assign commandBuffer__T_266_addr = 3'h2;
  assign commandBuffer__T_266_mask = 1'h1;
  assign commandBuffer__T_266_en = _T_249 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_269_data = byteBuffer_Buffer[5];
  assign commandBuffer__T_269_addr = 3'h3;
  assign commandBuffer__T_269_mask = 1'h1;
  assign commandBuffer__T_269_en = _T_249 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_272_data = byteBuffer_Buffer[6];
  assign commandBuffer__T_272_addr = 3'h4;
  assign commandBuffer__T_272_mask = 1'h1;
  assign commandBuffer__T_272_en = _T_249 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_275_data = byteBuffer_Buffer[7];
  assign commandBuffer__T_275_addr = 3'h5;
  assign commandBuffer__T_275_mask = 1'h1;
  assign commandBuffer__T_275_en = _T_249 ? _GEN_326 : 1'h0;
  assign commandArgumentBuffer__T_107_addr = commandArgumentBuffer__T_107_addr_pipe_0;
  assign commandArgumentBuffer__T_107_data = commandArgumentBuffer[commandArgumentBuffer__T_107_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_109_addr = commandArgumentBuffer__T_109_addr_pipe_0;
  assign commandArgumentBuffer__T_109_data = commandArgumentBuffer[commandArgumentBuffer__T_109_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_111_addr = commandArgumentBuffer__T_111_addr_pipe_0;
  assign commandArgumentBuffer__T_111_data = commandArgumentBuffer[commandArgumentBuffer__T_111_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_113_addr = commandArgumentBuffer__T_113_addr_pipe_0;
  assign commandArgumentBuffer__T_113_data = commandArgumentBuffer[commandArgumentBuffer__T_113_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_115_addr = commandArgumentBuffer__T_115_addr_pipe_0;
  assign commandArgumentBuffer__T_115_data = commandArgumentBuffer[commandArgumentBuffer__T_115_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_117_addr = commandArgumentBuffer__T_117_addr_pipe_0;
  assign commandArgumentBuffer__T_117_data = commandArgumentBuffer[commandArgumentBuffer__T_117_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_119_addr = commandArgumentBuffer__T_119_addr_pipe_0;
  assign commandArgumentBuffer__T_119_data = commandArgumentBuffer[commandArgumentBuffer__T_119_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_121_addr = commandArgumentBuffer__T_121_addr_pipe_0;
  assign commandArgumentBuffer__T_121_data = commandArgumentBuffer[commandArgumentBuffer__T_121_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_123_addr = commandArgumentBuffer__T_123_addr_pipe_0;
  assign commandArgumentBuffer__T_123_data = commandArgumentBuffer[commandArgumentBuffer__T_123_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_125_addr = commandArgumentBuffer__T_125_addr_pipe_0;
  assign commandArgumentBuffer__T_125_data = commandArgumentBuffer[commandArgumentBuffer__T_125_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_127_addr = commandArgumentBuffer__T_127_addr_pipe_0;
  assign commandArgumentBuffer__T_127_data = commandArgumentBuffer[commandArgumentBuffer__T_127_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_129_addr = commandArgumentBuffer__T_129_addr_pipe_0;
  assign commandArgumentBuffer__T_129_data = commandArgumentBuffer[commandArgumentBuffer__T_129_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_131_addr = commandArgumentBuffer__T_131_addr_pipe_0;
  assign commandArgumentBuffer__T_131_data = commandArgumentBuffer[commandArgumentBuffer__T_131_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_133_addr = commandArgumentBuffer__T_133_addr_pipe_0;
  assign commandArgumentBuffer__T_133_data = commandArgumentBuffer[commandArgumentBuffer__T_133_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_135_addr = commandArgumentBuffer__T_135_addr_pipe_0;
  assign commandArgumentBuffer__T_135_data = commandArgumentBuffer[commandArgumentBuffer__T_135_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_137_addr = commandArgumentBuffer__T_137_addr_pipe_0;
  assign commandArgumentBuffer__T_137_data = commandArgumentBuffer[commandArgumentBuffer__T_137_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_139_addr = commandArgumentBuffer__T_139_addr_pipe_0;
  assign commandArgumentBuffer__T_139_data = commandArgumentBuffer[commandArgumentBuffer__T_139_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_141_addr = commandArgumentBuffer__T_141_addr_pipe_0;
  assign commandArgumentBuffer__T_141_data = commandArgumentBuffer[commandArgumentBuffer__T_141_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_143_addr = commandArgumentBuffer__T_143_addr_pipe_0;
  assign commandArgumentBuffer__T_143_data = commandArgumentBuffer[commandArgumentBuffer__T_143_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_145_addr = commandArgumentBuffer__T_145_addr_pipe_0;
  assign commandArgumentBuffer__T_145_data = commandArgumentBuffer[commandArgumentBuffer__T_145_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_147_addr = commandArgumentBuffer__T_147_addr_pipe_0;
  assign commandArgumentBuffer__T_147_data = commandArgumentBuffer[commandArgumentBuffer__T_147_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_149_addr = commandArgumentBuffer__T_149_addr_pipe_0;
  assign commandArgumentBuffer__T_149_data = commandArgumentBuffer[commandArgumentBuffer__T_149_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_151_addr = commandArgumentBuffer__T_151_addr_pipe_0;
  assign commandArgumentBuffer__T_151_data = commandArgumentBuffer[commandArgumentBuffer__T_151_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_153_addr = commandArgumentBuffer__T_153_addr_pipe_0;
  assign commandArgumentBuffer__T_153_data = commandArgumentBuffer[commandArgumentBuffer__T_153_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_155_addr = commandArgumentBuffer__T_155_addr_pipe_0;
  assign commandArgumentBuffer__T_155_data = commandArgumentBuffer[commandArgumentBuffer__T_155_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_157_addr = commandArgumentBuffer__T_157_addr_pipe_0;
  assign commandArgumentBuffer__T_157_data = commandArgumentBuffer[commandArgumentBuffer__T_157_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_159_addr = commandArgumentBuffer__T_159_addr_pipe_0;
  assign commandArgumentBuffer__T_159_data = commandArgumentBuffer[commandArgumentBuffer__T_159_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_161_addr = commandArgumentBuffer__T_161_addr_pipe_0;
  assign commandArgumentBuffer__T_161_data = commandArgumentBuffer[commandArgumentBuffer__T_161_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_163_addr = commandArgumentBuffer__T_163_addr_pipe_0;
  assign commandArgumentBuffer__T_163_data = commandArgumentBuffer[commandArgumentBuffer__T_163_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_165_addr = commandArgumentBuffer__T_165_addr_pipe_0;
  assign commandArgumentBuffer__T_165_data = commandArgumentBuffer[commandArgumentBuffer__T_165_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_167_addr = commandArgumentBuffer__T_167_addr_pipe_0;
  assign commandArgumentBuffer__T_167_data = commandArgumentBuffer[commandArgumentBuffer__T_167_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_169_addr = commandArgumentBuffer__T_169_addr_pipe_0;
  assign commandArgumentBuffer__T_169_data = commandArgumentBuffer[commandArgumentBuffer__T_169_addr]; // @[SpiReceiver.scala 51:44:@19.4]
  assign commandArgumentBuffer__T_282_data = byteBuffer_Buffer[0];
  assign commandArgumentBuffer__T_282_addr = 5'h0;
  assign commandArgumentBuffer__T_282_mask = 1'h1;
  assign commandArgumentBuffer__T_282_en = _T_249 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_285_data = byteBuffer_Buffer[1];
  assign commandArgumentBuffer__T_285_addr = 5'h1;
  assign commandArgumentBuffer__T_285_mask = 1'h1;
  assign commandArgumentBuffer__T_285_en = _T_249 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_288_data = byteBuffer_Buffer[2];
  assign commandArgumentBuffer__T_288_addr = 5'h2;
  assign commandArgumentBuffer__T_288_mask = 1'h1;
  assign commandArgumentBuffer__T_288_en = _T_249 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_291_data = byteBuffer_Buffer[3];
  assign commandArgumentBuffer__T_291_addr = 5'h3;
  assign commandArgumentBuffer__T_291_mask = 1'h1;
  assign commandArgumentBuffer__T_291_en = _T_249 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_294_data = byteBuffer_Buffer[4];
  assign commandArgumentBuffer__T_294_addr = 5'h4;
  assign commandArgumentBuffer__T_294_mask = 1'h1;
  assign commandArgumentBuffer__T_294_en = _T_249 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_297_data = byteBuffer_Buffer[5];
  assign commandArgumentBuffer__T_297_addr = 5'h5;
  assign commandArgumentBuffer__T_297_mask = 1'h1;
  assign commandArgumentBuffer__T_297_en = _T_249 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_300_data = byteBuffer_Buffer[6];
  assign commandArgumentBuffer__T_300_addr = 5'h6;
  assign commandArgumentBuffer__T_300_mask = 1'h1;
  assign commandArgumentBuffer__T_300_en = _T_249 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_303_data = byteBuffer_Buffer[7];
  assign commandArgumentBuffer__T_303_addr = 5'h7;
  assign commandArgumentBuffer__T_303_mask = 1'h1;
  assign commandArgumentBuffer__T_303_en = _T_249 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_308_data = byteBuffer_Buffer[0];
  assign commandArgumentBuffer__T_308_addr = 5'h8;
  assign commandArgumentBuffer__T_308_mask = 1'h1;
  assign commandArgumentBuffer__T_308_en = _T_249 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_311_data = byteBuffer_Buffer[1];
  assign commandArgumentBuffer__T_311_addr = 5'h9;
  assign commandArgumentBuffer__T_311_mask = 1'h1;
  assign commandArgumentBuffer__T_311_en = _T_249 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_314_data = byteBuffer_Buffer[2];
  assign commandArgumentBuffer__T_314_addr = 5'ha;
  assign commandArgumentBuffer__T_314_mask = 1'h1;
  assign commandArgumentBuffer__T_314_en = _T_249 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_317_data = byteBuffer_Buffer[3];
  assign commandArgumentBuffer__T_317_addr = 5'hb;
  assign commandArgumentBuffer__T_317_mask = 1'h1;
  assign commandArgumentBuffer__T_317_en = _T_249 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_320_data = byteBuffer_Buffer[4];
  assign commandArgumentBuffer__T_320_addr = 5'hc;
  assign commandArgumentBuffer__T_320_mask = 1'h1;
  assign commandArgumentBuffer__T_320_en = _T_249 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_323_data = byteBuffer_Buffer[5];
  assign commandArgumentBuffer__T_323_addr = 5'hd;
  assign commandArgumentBuffer__T_323_mask = 1'h1;
  assign commandArgumentBuffer__T_323_en = _T_249 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_326_data = byteBuffer_Buffer[6];
  assign commandArgumentBuffer__T_326_addr = 5'he;
  assign commandArgumentBuffer__T_326_mask = 1'h1;
  assign commandArgumentBuffer__T_326_en = _T_249 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_329_data = byteBuffer_Buffer[7];
  assign commandArgumentBuffer__T_329_addr = 5'hf;
  assign commandArgumentBuffer__T_329_mask = 1'h1;
  assign commandArgumentBuffer__T_329_en = _T_249 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_334_data = byteBuffer_Buffer[0];
  assign commandArgumentBuffer__T_334_addr = 5'h10;
  assign commandArgumentBuffer__T_334_mask = 1'h1;
  assign commandArgumentBuffer__T_334_en = _T_249 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_337_data = byteBuffer_Buffer[1];
  assign commandArgumentBuffer__T_337_addr = 5'h11;
  assign commandArgumentBuffer__T_337_mask = 1'h1;
  assign commandArgumentBuffer__T_337_en = _T_249 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_340_data = byteBuffer_Buffer[2];
  assign commandArgumentBuffer__T_340_addr = 5'h12;
  assign commandArgumentBuffer__T_340_mask = 1'h1;
  assign commandArgumentBuffer__T_340_en = _T_249 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_343_data = byteBuffer_Buffer[3];
  assign commandArgumentBuffer__T_343_addr = 5'h13;
  assign commandArgumentBuffer__T_343_mask = 1'h1;
  assign commandArgumentBuffer__T_343_en = _T_249 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_346_data = byteBuffer_Buffer[4];
  assign commandArgumentBuffer__T_346_addr = 5'h14;
  assign commandArgumentBuffer__T_346_mask = 1'h1;
  assign commandArgumentBuffer__T_346_en = _T_249 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_349_data = byteBuffer_Buffer[5];
  assign commandArgumentBuffer__T_349_addr = 5'h15;
  assign commandArgumentBuffer__T_349_mask = 1'h1;
  assign commandArgumentBuffer__T_349_en = _T_249 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_352_data = byteBuffer_Buffer[6];
  assign commandArgumentBuffer__T_352_addr = 5'h16;
  assign commandArgumentBuffer__T_352_mask = 1'h1;
  assign commandArgumentBuffer__T_352_en = _T_249 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_355_data = byteBuffer_Buffer[7];
  assign commandArgumentBuffer__T_355_addr = 5'h17;
  assign commandArgumentBuffer__T_355_mask = 1'h1;
  assign commandArgumentBuffer__T_355_en = _T_249 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_360_data = byteBuffer_Buffer[0];
  assign commandArgumentBuffer__T_360_addr = 5'h18;
  assign commandArgumentBuffer__T_360_mask = 1'h1;
  assign commandArgumentBuffer__T_360_en = _T_249 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_363_data = byteBuffer_Buffer[1];
  assign commandArgumentBuffer__T_363_addr = 5'h19;
  assign commandArgumentBuffer__T_363_mask = 1'h1;
  assign commandArgumentBuffer__T_363_en = _T_249 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_366_data = byteBuffer_Buffer[2];
  assign commandArgumentBuffer__T_366_addr = 5'h1a;
  assign commandArgumentBuffer__T_366_mask = 1'h1;
  assign commandArgumentBuffer__T_366_en = _T_249 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_369_data = byteBuffer_Buffer[3];
  assign commandArgumentBuffer__T_369_addr = 5'h1b;
  assign commandArgumentBuffer__T_369_mask = 1'h1;
  assign commandArgumentBuffer__T_369_en = _T_249 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_372_data = byteBuffer_Buffer[4];
  assign commandArgumentBuffer__T_372_addr = 5'h1c;
  assign commandArgumentBuffer__T_372_mask = 1'h1;
  assign commandArgumentBuffer__T_372_en = _T_249 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_375_data = byteBuffer_Buffer[5];
  assign commandArgumentBuffer__T_375_addr = 5'h1d;
  assign commandArgumentBuffer__T_375_mask = 1'h1;
  assign commandArgumentBuffer__T_375_en = _T_249 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_378_data = byteBuffer_Buffer[6];
  assign commandArgumentBuffer__T_378_addr = 5'h1e;
  assign commandArgumentBuffer__T_378_mask = 1'h1;
  assign commandArgumentBuffer__T_378_en = _T_249 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_381_data = byteBuffer_Buffer[7];
  assign commandArgumentBuffer__T_381_addr = 5'h1f;
  assign commandArgumentBuffer__T_381_mask = 1'h1;
  assign commandArgumentBuffer__T_381_en = _T_249 ? _GEN_397 : 1'h0;
  assign commandVec_2 = commandBuffer__T_99_data; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@25.4]
  assign commandVec_1 = commandBuffer__T_97_data; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@23.4]
  assign commandVec_0 = commandBuffer__T_95_data; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@21.4]
  assign _T_171 = {commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 58:30:@97.4]
  assign commandVec_5 = commandBuffer__T_105_data; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@31.4]
  assign commandVec_4 = commandBuffer__T_103_data; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@29.4]
  assign commandVec_3 = commandBuffer__T_101_data; // @[SpiReceiver.scala 48:26:@16.4 SpiReceiver.scala 53:23:@27.4]
  assign _T_173 = {commandVec_5,commandVec_4,commandVec_3}; // @[SpiReceiver.scala 58:30:@99.4]
  assign _T_174 = {commandVec_5,commandVec_4,commandVec_3,commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 58:30:@100.4]
  assign commandArgumentVec_1 = commandArgumentBuffer__T_109_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@35.4]
  assign commandArgumentVec_0 = commandArgumentBuffer__T_107_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@33.4]
  assign commandArgumentVec_3 = commandArgumentBuffer__T_113_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@39.4]
  assign commandArgumentVec_2 = commandArgumentBuffer__T_111_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@37.4]
  assign commandArgumentVec_5 = commandArgumentBuffer__T_117_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@43.4]
  assign commandArgumentVec_4 = commandArgumentBuffer__T_115_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@41.4]
  assign commandArgumentVec_7 = commandArgumentBuffer__T_121_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@47.4]
  assign commandArgumentVec_6 = commandArgumentBuffer__T_119_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@45.4]
  assign _T_181 = {commandArgumentVec_7,commandArgumentVec_6,commandArgumentVec_5,commandArgumentVec_4,commandArgumentVec_3,commandArgumentVec_2,commandArgumentVec_1,commandArgumentVec_0}; // @[SpiReceiver.scala 59:46:@108.4]
  assign commandArgumentVec_9 = commandArgumentBuffer__T_125_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@51.4]
  assign commandArgumentVec_8 = commandArgumentBuffer__T_123_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@49.4]
  assign commandArgumentVec_11 = commandArgumentBuffer__T_129_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@55.4]
  assign commandArgumentVec_10 = commandArgumentBuffer__T_127_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@53.4]
  assign commandArgumentVec_13 = commandArgumentBuffer__T_133_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@59.4]
  assign commandArgumentVec_12 = commandArgumentBuffer__T_131_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@57.4]
  assign commandArgumentVec_15 = commandArgumentBuffer__T_137_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@63.4]
  assign commandArgumentVec_14 = commandArgumentBuffer__T_135_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@61.4]
  assign _T_189 = {commandArgumentVec_15,commandArgumentVec_14,commandArgumentVec_13,commandArgumentVec_12,commandArgumentVec_11,commandArgumentVec_10,commandArgumentVec_9,commandArgumentVec_8,_T_181}; // @[SpiReceiver.scala 59:46:@116.4]
  assign commandArgumentVec_17 = commandArgumentBuffer__T_141_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@67.4]
  assign commandArgumentVec_16 = commandArgumentBuffer__T_139_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@65.4]
  assign commandArgumentVec_19 = commandArgumentBuffer__T_145_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@71.4]
  assign commandArgumentVec_18 = commandArgumentBuffer__T_143_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@69.4]
  assign commandArgumentVec_21 = commandArgumentBuffer__T_149_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@75.4]
  assign commandArgumentVec_20 = commandArgumentBuffer__T_147_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@73.4]
  assign commandArgumentVec_23 = commandArgumentBuffer__T_153_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@79.4]
  assign commandArgumentVec_22 = commandArgumentBuffer__T_151_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@77.4]
  assign _T_196 = {commandArgumentVec_23,commandArgumentVec_22,commandArgumentVec_21,commandArgumentVec_20,commandArgumentVec_19,commandArgumentVec_18,commandArgumentVec_17,commandArgumentVec_16}; // @[SpiReceiver.scala 59:46:@123.4]
  assign commandArgumentVec_25 = commandArgumentBuffer__T_157_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@83.4]
  assign commandArgumentVec_24 = commandArgumentBuffer__T_155_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@81.4]
  assign commandArgumentVec_27 = commandArgumentBuffer__T_161_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@87.4]
  assign commandArgumentVec_26 = commandArgumentBuffer__T_159_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@85.4]
  assign commandArgumentVec_29 = commandArgumentBuffer__T_165_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@91.4]
  assign commandArgumentVec_28 = commandArgumentBuffer__T_163_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@89.4]
  assign commandArgumentVec_31 = commandArgumentBuffer__T_169_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@95.4]
  assign commandArgumentVec_30 = commandArgumentBuffer__T_167_data; // @[SpiReceiver.scala 49:34:@17.4 SpiReceiver.scala 56:31:@93.4]
  assign _T_204 = {commandArgumentVec_31,commandArgumentVec_30,commandArgumentVec_29,commandArgumentVec_28,commandArgumentVec_27,commandArgumentVec_26,commandArgumentVec_25,commandArgumentVec_24,_T_196}; // @[SpiReceiver.scala 59:46:@131.4]
  assign _T_226 = {_T_209_3,_T_209_2,_T_209_1,_T_209_0}; // @[SpiReceiver.scala 66:37:@140.4]
  assign _T_229 = {_T_209_7,_T_209_6,_T_209_5,_T_209_4}; // @[SpiReceiver.scala 66:37:@143.4]
  assign byteBuffer_Buffer = {_T_209_7,_T_209_6,_T_209_5,_T_209_4,_T_209_3,_T_209_2,_T_209_1,_T_209_0}; // @[SpiReceiver.scala 66:37:@144.4]
  assign _T_242 = byteBuffer_Counter + 3'h1; // @[SpiReceiver.scala 76:36:@161.4]
  assign _T_243 = byteBuffer_Counter + 3'h1; // @[SpiReceiver.scala 76:36:@162.4]
  assign _T_246 = writeBacked == 1'h0; // @[SpiReceiver.scala 80:22:@165.4]
  assign _T_248 = byteBuffer_Counter == 3'h0; // @[SpiReceiver.scala 80:56:@166.4]
  assign _T_249 = _T_246 & _T_248; // @[SpiReceiver.scala 80:34:@167.4]
  assign _T_250 = 2'h0 == state; // @[Conditional.scala 37:30:@169.6]
  assign _T_251 = byteBuffer_Buffer[0]; // @[SpiReceiver.scala 83:39:@171.8]
  assign _T_253 = _T_251 == 1'h0; // @[SpiReceiver.scala 83:43:@172.8]
  assign _T_254 = byteBuffer_Buffer[1]; // @[SpiReceiver.scala 83:75:@173.8]
  assign _T_257 = _T_253 & _T_254; // @[SpiReceiver.scala 83:55:@175.8]
  assign _T_274 = byteBuffer_Buffer[7]; // @[SpiReceiver.scala 86:67:@193.10]
  assign _GEN_8 = _T_257 ? 2'h1 : state; // @[SpiReceiver.scala 83:91:@176.8]
  assign _GEN_12 = 1'h1; // @[SpiReceiver.scala 83:91:@176.8]
  assign _GEN_23 = _T_257 ? 8'h0 : counter; // @[SpiReceiver.scala 83:91:@176.8]
  assign _T_277 = 2'h1 == state; // @[Conditional.scala 37:30:@200.8]
  assign _T_279 = 8'h0 == counter; // @[Conditional.scala 37:30:@202.10]
  assign _T_305 = 8'h1 == counter; // @[Conditional.scala 37:30:@230.12]
  assign _T_331 = 8'h2 == counter; // @[Conditional.scala 37:30:@258.14]
  assign _T_357 = 8'h3 == counter; // @[Conditional.scala 37:30:@286.16]
  assign _GEN_64 = _T_331 ? 1'h0 : _T_357; // @[Conditional.scala 39:67:@259.14]
  assign _GEN_102 = _T_305 ? 1'h0 : _T_331; // @[Conditional.scala 39:67:@231.12]
  assign _GEN_121 = _T_305 ? 1'h0 : _GEN_64; // @[Conditional.scala 39:67:@231.12]
  assign _GEN_158 = _T_279 ? 1'h0 : _T_305; // @[Conditional.scala 40:58:@203.10]
  assign _GEN_177 = _T_279 ? 1'h0 : _GEN_102; // @[Conditional.scala 40:58:@203.10]
  assign _GEN_196 = _T_279 ? 1'h0 : _GEN_121; // @[Conditional.scala 40:58:@203.10]
  assign _T_383 = counter + 8'h1; // @[SpiReceiver.scala 109:36:@313.10]
  assign _T_384 = counter + 8'h1; // @[SpiReceiver.scala 109:36:@314.10]
  assign _T_386 = counter == 8'h3; // @[SpiReceiver.scala 110:30:@316.10]
  assign _GEN_213 = _T_386 ? 2'h2 : state; // @[SpiReceiver.scala 110:39:@317.10]
  assign _GEN_214 = _T_386 ? 8'h0 : _T_384; // @[SpiReceiver.scala 110:39:@317.10]
  assign _T_391 = 2'h2 == state; // @[Conditional.scala 37:30:@328.10]
  assign _T_419 = _T_174 == 6'h18; // @[SpiReceiver.scala 121:48:@356.12]
  assign _T_420 = _T_419 ? 2'h3 : 2'h0; // @[SpiReceiver.scala 121:29:@357.12]
  assign _GEN_215 = _T_391 ? _T_274 : readSuccess; // @[Conditional.scala 39:67:@329.10]
  assign _GEN_230 = _T_391 ? _T_420 : state; // @[Conditional.scala 39:67:@329.10]
  assign _GEN_233 = _T_277 ? _T_279 : 1'h0; // @[Conditional.scala 39:67:@201.8]
  assign _GEN_251 = _T_277 ? _GEN_158 : 1'h0; // @[Conditional.scala 39:67:@201.8]
  assign _GEN_270 = _T_277 ? _GEN_177 : 1'h0; // @[Conditional.scala 39:67:@201.8]
  assign _GEN_289 = _T_277 ? _GEN_196 : 1'h0; // @[Conditional.scala 39:67:@201.8]
  assign _GEN_306 = _T_277 ? _GEN_214 : counter; // @[Conditional.scala 39:67:@201.8]
  assign _GEN_307 = _T_277 ? _GEN_213 : _GEN_230; // @[Conditional.scala 39:67:@201.8]
  assign _GEN_308 = _T_277 ? readSuccess : _GEN_215; // @[Conditional.scala 39:67:@201.8]
  assign _GEN_323 = _T_250 ? _GEN_8 : _GEN_307; // @[Conditional.scala 40:58:@170.6]
  assign _GEN_326 = _T_250 ? _T_257 : 1'h0; // @[Conditional.scala 40:58:@170.6]
  assign _GEN_338 = _T_250 ? _GEN_23 : _GEN_306; // @[Conditional.scala 40:58:@170.6]
  assign _GEN_341 = _T_250 ? 1'h0 : _GEN_233; // @[Conditional.scala 40:58:@170.6]
  assign _GEN_359 = _T_250 ? 1'h0 : _GEN_251; // @[Conditional.scala 40:58:@170.6]
  assign _GEN_378 = _T_250 ? 1'h0 : _GEN_270; // @[Conditional.scala 40:58:@170.6]
  assign _GEN_397 = _T_250 ? 1'h0 : _GEN_289; // @[Conditional.scala 40:58:@170.6]
  assign _GEN_414 = _T_250 ? readSuccess : _GEN_308; // @[Conditional.scala 40:58:@170.6]
  assign _T_422 = byteBuffer_Counter != 3'h0; // @[SpiReceiver.scala 127:35:@362.6]
  assign _GEN_429 = _T_422 ? 1'h0 : 1'h1; // @[SpiReceiver.scala 127:44:@363.6]
  assign _GEN_430 = _T_249 ? _GEN_323 : state; // @[SpiReceiver.scala 80:65:@168.4]
  assign _GEN_445 = _T_249 ? _GEN_338 : counter; // @[SpiReceiver.scala 80:65:@168.4]
  assign _GEN_521 = _T_249 ? _GEN_414 : readSuccess; // @[SpiReceiver.scala 80:65:@168.4]
  assign _GEN_536 = _T_249 ? 1'h1 : _GEN_429; // @[SpiReceiver.scala 80:65:@168.4]
  assign io_SPI_DO = io_DO; // @[SpiReceiver.scala 36:15:@9.4]
  assign io_DI = io_SPI_DI; // @[SpiReceiver.scala 35:11:@8.4]
  assign io_CommandReadFinished = state > 2'h0; // @[SpiReceiver.scala 68:32:@147.4]
  assign io_ArgumentReadFinished = state > 2'h1; // @[SpiReceiver.scala 69:33:@149.4]
  assign io_ReadSuccess = readSuccess; // @[SpiReceiver.scala 70:24:@150.4]
  assign io_Command = {_T_173,_T_171}; // @[SpiReceiver.scala 58:16:@101.4]
  assign io_CommandArgument = {_T_204,_T_189}; // @[SpiReceiver.scala 59:24:@133.4]
  assign io____counter = byteBuffer_Counter; // @[SpiReceiver.scala 73:23:@159.4]
  assign io____state = {{1'd0}, state}; // @[SpiReceiver.scala 40:17:@11.4]
  assign io____buffer = {_T_229,_T_226}; // @[SpiReceiver.scala 72:22:@158.4]
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
  state = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  readSuccess = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  counter = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  writeBacked = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_209_0 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_209_1 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_209_2 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_209_3 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_209_4 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_209_5 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_209_6 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_209_7 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  byteBuffer_Counter = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  commandBuffer__T_95_addr_pipe_0 = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  commandBuffer__T_97_addr_pipe_0 = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  commandBuffer__T_99_addr_pipe_0 = _RAND_23[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  commandBuffer__T_101_addr_pipe_0 = _RAND_24[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  commandBuffer__T_103_addr_pipe_0 = _RAND_25[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  commandBuffer__T_105_addr_pipe_0 = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  commandArgumentBuffer__T_107_addr_pipe_0 = _RAND_27[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  commandArgumentBuffer__T_109_addr_pipe_0 = _RAND_28[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  commandArgumentBuffer__T_111_addr_pipe_0 = _RAND_29[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  commandArgumentBuffer__T_113_addr_pipe_0 = _RAND_30[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  commandArgumentBuffer__T_115_addr_pipe_0 = _RAND_31[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  commandArgumentBuffer__T_117_addr_pipe_0 = _RAND_32[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  commandArgumentBuffer__T_119_addr_pipe_0 = _RAND_33[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  commandArgumentBuffer__T_121_addr_pipe_0 = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  commandArgumentBuffer__T_123_addr_pipe_0 = _RAND_35[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  commandArgumentBuffer__T_125_addr_pipe_0 = _RAND_36[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  commandArgumentBuffer__T_127_addr_pipe_0 = _RAND_37[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  commandArgumentBuffer__T_129_addr_pipe_0 = _RAND_38[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  commandArgumentBuffer__T_131_addr_pipe_0 = _RAND_39[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  commandArgumentBuffer__T_133_addr_pipe_0 = _RAND_40[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  commandArgumentBuffer__T_135_addr_pipe_0 = _RAND_41[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  commandArgumentBuffer__T_137_addr_pipe_0 = _RAND_42[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  commandArgumentBuffer__T_139_addr_pipe_0 = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  commandArgumentBuffer__T_141_addr_pipe_0 = _RAND_44[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  commandArgumentBuffer__T_143_addr_pipe_0 = _RAND_45[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  commandArgumentBuffer__T_145_addr_pipe_0 = _RAND_46[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  commandArgumentBuffer__T_147_addr_pipe_0 = _RAND_47[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  commandArgumentBuffer__T_149_addr_pipe_0 = _RAND_48[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  commandArgumentBuffer__T_151_addr_pipe_0 = _RAND_49[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  commandArgumentBuffer__T_153_addr_pipe_0 = _RAND_50[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  commandArgumentBuffer__T_155_addr_pipe_0 = _RAND_51[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  commandArgumentBuffer__T_157_addr_pipe_0 = _RAND_52[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  commandArgumentBuffer__T_159_addr_pipe_0 = _RAND_53[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  commandArgumentBuffer__T_161_addr_pipe_0 = _RAND_54[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  commandArgumentBuffer__T_163_addr_pipe_0 = _RAND_55[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  commandArgumentBuffer__T_165_addr_pipe_0 = _RAND_56[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  commandArgumentBuffer__T_167_addr_pipe_0 = _RAND_57[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  commandArgumentBuffer__T_169_addr_pipe_0 = _RAND_58[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(commandBuffer__T_260_en & commandBuffer__T_260_mask) begin
      commandBuffer[commandBuffer__T_260_addr] <= commandBuffer__T_260_data; // @[SpiReceiver.scala 50:36:@18.4]
    end
    if(commandBuffer__T_263_en & commandBuffer__T_263_mask) begin
      commandBuffer[commandBuffer__T_263_addr] <= commandBuffer__T_263_data; // @[SpiReceiver.scala 50:36:@18.4]
    end
    if(commandBuffer__T_266_en & commandBuffer__T_266_mask) begin
      commandBuffer[commandBuffer__T_266_addr] <= commandBuffer__T_266_data; // @[SpiReceiver.scala 50:36:@18.4]
    end
    if(commandBuffer__T_269_en & commandBuffer__T_269_mask) begin
      commandBuffer[commandBuffer__T_269_addr] <= commandBuffer__T_269_data; // @[SpiReceiver.scala 50:36:@18.4]
    end
    if(commandBuffer__T_272_en & commandBuffer__T_272_mask) begin
      commandBuffer[commandBuffer__T_272_addr] <= commandBuffer__T_272_data; // @[SpiReceiver.scala 50:36:@18.4]
    end
    if(commandBuffer__T_275_en & commandBuffer__T_275_mask) begin
      commandBuffer[commandBuffer__T_275_addr] <= commandBuffer__T_275_data; // @[SpiReceiver.scala 50:36:@18.4]
    end
    if(commandArgumentBuffer__T_282_en & commandArgumentBuffer__T_282_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_282_addr] <= commandArgumentBuffer__T_282_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_285_en & commandArgumentBuffer__T_285_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_285_addr] <= commandArgumentBuffer__T_285_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_288_en & commandArgumentBuffer__T_288_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_288_addr] <= commandArgumentBuffer__T_288_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_291_en & commandArgumentBuffer__T_291_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_291_addr] <= commandArgumentBuffer__T_291_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_294_en & commandArgumentBuffer__T_294_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_294_addr] <= commandArgumentBuffer__T_294_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_297_en & commandArgumentBuffer__T_297_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_297_addr] <= commandArgumentBuffer__T_297_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_300_en & commandArgumentBuffer__T_300_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_300_addr] <= commandArgumentBuffer__T_300_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_303_en & commandArgumentBuffer__T_303_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_303_addr] <= commandArgumentBuffer__T_303_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_308_en & commandArgumentBuffer__T_308_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_308_addr] <= commandArgumentBuffer__T_308_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_311_en & commandArgumentBuffer__T_311_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_311_addr] <= commandArgumentBuffer__T_311_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_314_en & commandArgumentBuffer__T_314_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_314_addr] <= commandArgumentBuffer__T_314_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_317_en & commandArgumentBuffer__T_317_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_317_addr] <= commandArgumentBuffer__T_317_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_320_en & commandArgumentBuffer__T_320_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_320_addr] <= commandArgumentBuffer__T_320_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_323_en & commandArgumentBuffer__T_323_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_323_addr] <= commandArgumentBuffer__T_323_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_326_en & commandArgumentBuffer__T_326_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_326_addr] <= commandArgumentBuffer__T_326_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_329_en & commandArgumentBuffer__T_329_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_329_addr] <= commandArgumentBuffer__T_329_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_334_en & commandArgumentBuffer__T_334_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_334_addr] <= commandArgumentBuffer__T_334_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_337_en & commandArgumentBuffer__T_337_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_337_addr] <= commandArgumentBuffer__T_337_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_340_en & commandArgumentBuffer__T_340_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_340_addr] <= commandArgumentBuffer__T_340_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_343_en & commandArgumentBuffer__T_343_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_343_addr] <= commandArgumentBuffer__T_343_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_346_en & commandArgumentBuffer__T_346_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_346_addr] <= commandArgumentBuffer__T_346_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_349_en & commandArgumentBuffer__T_349_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_349_addr] <= commandArgumentBuffer__T_349_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_352_en & commandArgumentBuffer__T_352_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_352_addr] <= commandArgumentBuffer__T_352_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_355_en & commandArgumentBuffer__T_355_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_355_addr] <= commandArgumentBuffer__T_355_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_360_en & commandArgumentBuffer__T_360_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_360_addr] <= commandArgumentBuffer__T_360_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_363_en & commandArgumentBuffer__T_363_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_363_addr] <= commandArgumentBuffer__T_363_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_366_en & commandArgumentBuffer__T_366_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_366_addr] <= commandArgumentBuffer__T_366_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_369_en & commandArgumentBuffer__T_369_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_369_addr] <= commandArgumentBuffer__T_369_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_372_en & commandArgumentBuffer__T_372_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_372_addr] <= commandArgumentBuffer__T_372_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_375_en & commandArgumentBuffer__T_375_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_375_addr] <= commandArgumentBuffer__T_375_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_378_en & commandArgumentBuffer__T_378_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_378_addr] <= commandArgumentBuffer__T_378_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if(commandArgumentBuffer__T_381_en & commandArgumentBuffer__T_381_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_381_addr] <= commandArgumentBuffer__T_381_data; // @[SpiReceiver.scala 51:44:@19.4]
    end
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_249) begin
        if (_T_250) begin
          if (_T_257) begin
            state <= 2'h1;
          end
        end else begin
          if (_T_277) begin
            if (_T_386) begin
              state <= 2'h2;
            end
          end else begin
            if (_T_391) begin
              if (_T_419) begin
                state <= 2'h3;
              end else begin
                state <= 2'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      readSuccess <= 1'h0;
    end else begin
      if (_T_249) begin
        if (!(_T_250)) begin
          if (!(_T_277)) begin
            if (_T_391) begin
              readSuccess <= _T_274;
            end
          end
        end
      end
    end
    if (reset) begin
      counter <= 8'h0;
    end else begin
      if (_T_249) begin
        if (_T_250) begin
          if (_T_257) begin
            counter <= 8'h0;
          end
        end else begin
          if (_T_277) begin
            if (_T_386) begin
              counter <= 8'h0;
            end else begin
              counter <= _T_384;
            end
          end
        end
      end
    end
    if (reset) begin
      writeBacked <= 1'h1;
    end else begin
      if (_T_249) begin
        writeBacked <= 1'h1;
      end else begin
        if (_T_422) begin
          writeBacked <= 1'h0;
        end else begin
          writeBacked <= 1'h1;
        end
      end
    end
    if (_GEN_12) begin
      commandBuffer__T_95_addr_pipe_0 <= 3'h0;
    end
    if (_GEN_12) begin
      commandBuffer__T_97_addr_pipe_0 <= 3'h1;
    end
    if (_GEN_12) begin
      commandBuffer__T_99_addr_pipe_0 <= 3'h2;
    end
    if (_GEN_12) begin
      commandBuffer__T_101_addr_pipe_0 <= 3'h3;
    end
    if (_GEN_12) begin
      commandBuffer__T_103_addr_pipe_0 <= 3'h4;
    end
    if (_GEN_12) begin
      commandBuffer__T_105_addr_pipe_0 <= 3'h5;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_107_addr_pipe_0 <= 5'h0;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_109_addr_pipe_0 <= 5'h1;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_111_addr_pipe_0 <= 5'h2;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_113_addr_pipe_0 <= 5'h3;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_115_addr_pipe_0 <= 5'h4;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_117_addr_pipe_0 <= 5'h5;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_119_addr_pipe_0 <= 5'h6;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_121_addr_pipe_0 <= 5'h7;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_123_addr_pipe_0 <= 5'h8;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_125_addr_pipe_0 <= 5'h9;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_127_addr_pipe_0 <= 5'ha;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_129_addr_pipe_0 <= 5'hb;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_131_addr_pipe_0 <= 5'hc;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_133_addr_pipe_0 <= 5'hd;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_135_addr_pipe_0 <= 5'he;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_137_addr_pipe_0 <= 5'hf;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_139_addr_pipe_0 <= 5'h10;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_141_addr_pipe_0 <= 5'h11;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_143_addr_pipe_0 <= 5'h12;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_145_addr_pipe_0 <= 5'h13;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_147_addr_pipe_0 <= 5'h14;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_149_addr_pipe_0 <= 5'h15;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_151_addr_pipe_0 <= 5'h16;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_153_addr_pipe_0 <= 5'h17;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_155_addr_pipe_0 <= 5'h18;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_157_addr_pipe_0 <= 5'h19;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_159_addr_pipe_0 <= 5'h1a;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_161_addr_pipe_0 <= 5'h1b;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_163_addr_pipe_0 <= 5'h1c;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_165_addr_pipe_0 <= 5'h1d;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_167_addr_pipe_0 <= 5'h1e;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_169_addr_pipe_0 <= 5'h1f;
    end
  end
  always @(posedge io_SPI_CLK) begin
    if (3'h0 == byteBuffer_Counter) begin
      _T_209_0 <= io_SPI_DI;
    end
    if (3'h1 == byteBuffer_Counter) begin
      _T_209_1 <= io_SPI_DI;
    end
    if (3'h2 == byteBuffer_Counter) begin
      _T_209_2 <= io_SPI_DI;
    end
    if (3'h3 == byteBuffer_Counter) begin
      _T_209_3 <= io_SPI_DI;
    end
    if (3'h4 == byteBuffer_Counter) begin
      _T_209_4 <= io_SPI_DI;
    end
    if (3'h5 == byteBuffer_Counter) begin
      _T_209_5 <= io_SPI_DI;
    end
    if (3'h6 == byteBuffer_Counter) begin
      _T_209_6 <= io_SPI_DI;
    end
    if (3'h7 == byteBuffer_Counter) begin
      _T_209_7 <= io_SPI_DI;
    end
    if (reset) begin
      byteBuffer_Counter <= 3'h0;
    end else begin
      byteBuffer_Counter <= _T_243;
    end
  end
endmodule
