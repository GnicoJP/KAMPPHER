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
  output [2:0]  io____state // @[:@6.4]
);
  reg  commandBuffer [0:5]; // @[SpiReceiver.scala 44:36:@18.4]
  reg [31:0] _RAND_0;
  wire  commandBuffer__T_108_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_108_addr; // @[SpiReceiver.scala 44:36:@18.4]
  reg [31:0] _RAND_1;
  wire  commandBuffer__T_110_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_110_addr; // @[SpiReceiver.scala 44:36:@18.4]
  reg [31:0] _RAND_2;
  wire  commandBuffer__T_112_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_112_addr; // @[SpiReceiver.scala 44:36:@18.4]
  reg [31:0] _RAND_3;
  wire  commandBuffer__T_114_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_114_addr; // @[SpiReceiver.scala 44:36:@18.4]
  reg [31:0] _RAND_4;
  wire  commandBuffer__T_116_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_116_addr; // @[SpiReceiver.scala 44:36:@18.4]
  reg [31:0] _RAND_5;
  wire  commandBuffer__T_118_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_118_addr; // @[SpiReceiver.scala 44:36:@18.4]
  reg [31:0] _RAND_6;
  wire  commandBuffer__T_229_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_229_addr; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_229_mask; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_229_en; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_231_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_231_addr; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_231_mask; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_231_en; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_233_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_233_addr; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_233_mask; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_233_en; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_235_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_235_addr; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_235_mask; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_235_en; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_237_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_237_addr; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_237_mask; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_237_en; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_239_data; // @[SpiReceiver.scala 44:36:@18.4]
  wire [2:0] commandBuffer__T_239_addr; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_239_mask; // @[SpiReceiver.scala 44:36:@18.4]
  wire  commandBuffer__T_239_en; // @[SpiReceiver.scala 44:36:@18.4]
  reg  commandArgumentBuffer [0:31]; // @[SpiReceiver.scala 45:44:@19.4]
  reg [31:0] _RAND_7;
  wire  commandArgumentBuffer__T_120_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_120_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_122_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_122_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_124_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_124_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_126_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_126_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_128_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_128_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_130_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_130_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_132_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_132_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_134_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_134_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_136_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_136_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_138_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_138_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_140_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_140_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_142_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_142_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_144_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_144_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_146_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_146_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_148_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_148_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_150_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_150_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_152_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_152_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_154_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_154_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_156_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_156_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_158_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_158_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_160_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_160_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_162_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_162_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_164_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_164_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_166_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_166_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_168_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_168_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_170_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_170_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_172_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_172_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_174_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_174_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_176_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_176_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_178_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_178_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_180_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_180_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_182_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_182_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_245_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_245_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_245_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_245_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_247_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_247_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_247_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_247_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_249_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_249_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_249_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_249_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_251_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_251_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_251_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_251_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_253_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_253_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_253_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_253_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_255_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_255_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_255_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_255_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_257_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_257_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_257_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_257_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_259_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_259_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_259_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_259_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_263_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_263_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_263_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_263_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_265_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_265_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_265_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_265_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_267_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_267_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_267_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_267_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_269_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_269_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_269_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_269_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_271_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_271_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_271_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_271_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_273_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_273_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_273_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_273_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_275_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_275_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_275_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_275_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_277_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_277_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_277_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_277_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_281_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_281_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_281_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_281_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_283_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_283_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_283_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_283_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_285_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_285_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_285_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_285_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_287_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_287_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_287_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_287_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_289_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_289_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_289_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_289_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_291_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_291_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_291_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_291_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_293_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_293_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_293_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_293_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_295_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_295_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_295_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_295_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_299_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_299_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_299_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_299_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_301_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_301_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_301_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_301_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_303_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_303_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_303_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_303_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_305_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_305_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_305_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_305_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_307_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_307_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_307_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_307_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_309_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_309_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_309_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_309_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_311_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_311_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_311_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_311_en; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_313_data; // @[SpiReceiver.scala 45:44:@19.4]
  wire [4:0] commandArgumentBuffer__T_313_addr; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_313_mask; // @[SpiReceiver.scala 45:44:@19.4]
  wire  commandArgumentBuffer__T_313_en; // @[SpiReceiver.scala 45:44:@19.4]
  reg [1:0] state; // @[SpiReceiver.scala 34:24:@10.4]
  reg [31:0] _RAND_8;
  reg [7:0] counter; // @[SpiReceiver.scala 35:26:@11.4]
  reg [31:0] _RAND_9;
  reg  readSuccess; // @[SpiReceiver.scala 37:30:@13.4]
  reg [31:0] _RAND_10;
  reg  byteBuffer_0; // @[SpiReceiver.scala 39:25:@14.4]
  reg [31:0] _RAND_11;
  reg  byteBuffer_1; // @[SpiReceiver.scala 39:25:@14.4]
  reg [31:0] _RAND_12;
  reg  byteBuffer_2; // @[SpiReceiver.scala 39:25:@14.4]
  reg [31:0] _RAND_13;
  reg  byteBuffer_3; // @[SpiReceiver.scala 39:25:@14.4]
  reg [31:0] _RAND_14;
  reg  byteBuffer_4; // @[SpiReceiver.scala 39:25:@14.4]
  reg [31:0] _RAND_15;
  reg  byteBuffer_5; // @[SpiReceiver.scala 39:25:@14.4]
  reg [31:0] _RAND_16;
  reg  byteBuffer_6; // @[SpiReceiver.scala 39:25:@14.4]
  reg [31:0] _RAND_17;
  reg  byteBuffer_7; // @[SpiReceiver.scala 39:25:@14.4]
  reg [31:0] _RAND_18;
  reg [2:0] byteCounter; // @[SpiReceiver.scala 40:30:@15.4]
  reg [31:0] _RAND_19;
  wire  commandVec_2; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@32.4]
  wire  commandVec_1; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@30.4]
  wire  commandVec_0; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@28.4]
  wire [2:0] _T_184; // @[SpiReceiver.scala 60:30:@104.4]
  wire  commandVec_5; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@38.4]
  wire  commandVec_4; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@36.4]
  wire  commandVec_3; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@34.4]
  wire [2:0] _T_186; // @[SpiReceiver.scala 60:30:@106.4]
  wire [5:0] _T_187; // @[SpiReceiver.scala 60:30:@107.4]
  wire  commandArgumentVec_1; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@42.4]
  wire  commandArgumentVec_0; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@40.4]
  wire  commandArgumentVec_3; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@46.4]
  wire  commandArgumentVec_2; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@44.4]
  wire  commandArgumentVec_5; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@50.4]
  wire  commandArgumentVec_4; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@48.4]
  wire  commandArgumentVec_7; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@54.4]
  wire  commandArgumentVec_6; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@52.4]
  wire [7:0] _T_194; // @[SpiReceiver.scala 61:46:@115.4]
  wire  commandArgumentVec_9; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@58.4]
  wire  commandArgumentVec_8; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@56.4]
  wire  commandArgumentVec_11; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@62.4]
  wire  commandArgumentVec_10; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@60.4]
  wire  commandArgumentVec_13; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@66.4]
  wire  commandArgumentVec_12; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@64.4]
  wire  commandArgumentVec_15; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@70.4]
  wire  commandArgumentVec_14; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@68.4]
  wire [15:0] _T_202; // @[SpiReceiver.scala 61:46:@123.4]
  wire  commandArgumentVec_17; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@74.4]
  wire  commandArgumentVec_16; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@72.4]
  wire  commandArgumentVec_19; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@78.4]
  wire  commandArgumentVec_18; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@76.4]
  wire  commandArgumentVec_21; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@82.4]
  wire  commandArgumentVec_20; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@80.4]
  wire  commandArgumentVec_23; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@86.4]
  wire  commandArgumentVec_22; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@84.4]
  wire [7:0] _T_209; // @[SpiReceiver.scala 61:46:@130.4]
  wire  commandArgumentVec_25; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@90.4]
  wire  commandArgumentVec_24; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@88.4]
  wire  commandArgumentVec_27; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@94.4]
  wire  commandArgumentVec_26; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@92.4]
  wire  commandArgumentVec_29; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@98.4]
  wire  commandArgumentVec_28; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@96.4]
  wire  commandArgumentVec_31; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@102.4]
  wire  commandArgumentVec_30; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@100.4]
  wire [15:0] _T_217; // @[SpiReceiver.scala 61:46:@138.4]
  wire  _T_221; // @[SpiReceiver.scala 65:26:@142.4]
  wire  _T_222; // @[Conditional.scala 37:30:@144.6]
  wire  _T_224; // @[SpiReceiver.scala 68:40:@146.8]
  wire  _T_227; // @[SpiReceiver.scala 68:52:@148.8]
  wire [1:0] _GEN_8; // @[SpiReceiver.scala 68:81:@149.8]
  wire  _GEN_12; // @[SpiReceiver.scala 68:81:@149.8]
  wire [7:0] _GEN_23; // @[SpiReceiver.scala 68:81:@149.8]
  wire  _T_241; // @[Conditional.scala 37:30:@167.8]
  wire  _T_243; // @[Conditional.scala 37:30:@169.10]
  wire  _T_261; // @[Conditional.scala 37:30:@189.12]
  wire  _T_279; // @[Conditional.scala 37:30:@209.14]
  wire  _T_297; // @[Conditional.scala 37:30:@229.16]
  wire  _GEN_64; // @[Conditional.scala 39:67:@210.14]
  wire  _GEN_102; // @[Conditional.scala 39:67:@190.12]
  wire  _GEN_121; // @[Conditional.scala 39:67:@190.12]
  wire  _GEN_158; // @[Conditional.scala 40:58:@170.10]
  wire  _GEN_177; // @[Conditional.scala 40:58:@170.10]
  wire  _GEN_196; // @[Conditional.scala 40:58:@170.10]
  wire [8:0] _T_315; // @[SpiReceiver.scala 94:40:@248.10]
  wire [7:0] _T_316; // @[SpiReceiver.scala 94:40:@249.10]
  wire  _T_318; // @[SpiReceiver.scala 95:34:@251.10]
  wire [1:0] _GEN_213; // @[SpiReceiver.scala 95:43:@252.10]
  wire [7:0] _GEN_214; // @[SpiReceiver.scala 95:43:@252.10]
  wire  _T_323; // @[Conditional.scala 37:30:@263.10]
  wire  _T_344; // @[SpiReceiver.scala 106:52:@284.12]
  wire [1:0] _T_345; // @[SpiReceiver.scala 106:33:@285.12]
  wire  _GEN_215; // @[Conditional.scala 39:67:@264.10]
  wire [1:0] _GEN_230; // @[Conditional.scala 39:67:@264.10]
  wire  _GEN_233; // @[Conditional.scala 39:67:@168.8]
  wire  _GEN_251; // @[Conditional.scala 39:67:@168.8]
  wire  _GEN_270; // @[Conditional.scala 39:67:@168.8]
  wire  _GEN_289; // @[Conditional.scala 39:67:@168.8]
  wire [7:0] _GEN_306; // @[Conditional.scala 39:67:@168.8]
  wire [1:0] _GEN_307; // @[Conditional.scala 39:67:@168.8]
  wire  _GEN_308; // @[Conditional.scala 39:67:@168.8]
  wire [1:0] _GEN_323; // @[Conditional.scala 40:58:@145.6]
  wire  _GEN_326; // @[Conditional.scala 40:58:@145.6]
  wire [7:0] _GEN_338; // @[Conditional.scala 40:58:@145.6]
  wire  _GEN_341; // @[Conditional.scala 40:58:@145.6]
  wire  _GEN_359; // @[Conditional.scala 40:58:@145.6]
  wire  _GEN_378; // @[Conditional.scala 40:58:@145.6]
  wire  _GEN_397; // @[Conditional.scala 40:58:@145.6]
  wire  _GEN_414; // @[Conditional.scala 40:58:@145.6]
  wire [1:0] _GEN_429; // @[SpiReceiver.scala 65:35:@143.4]
  wire [7:0] _GEN_444; // @[SpiReceiver.scala 65:35:@143.4]
  wire  _GEN_520; // @[SpiReceiver.scala 65:35:@143.4]
  wire [3:0] _T_347; // @[SpiReceiver.scala 113:36:@289.4]
  wire [2:0] _T_348; // @[SpiReceiver.scala 113:36:@290.4]
  reg [2:0] commandBuffer__T_108_addr_pipe_0;
  reg [31:0] _RAND_20;
  reg [2:0] commandBuffer__T_110_addr_pipe_0;
  reg [31:0] _RAND_21;
  reg [2:0] commandBuffer__T_112_addr_pipe_0;
  reg [31:0] _RAND_22;
  reg [2:0] commandBuffer__T_114_addr_pipe_0;
  reg [31:0] _RAND_23;
  reg [2:0] commandBuffer__T_116_addr_pipe_0;
  reg [31:0] _RAND_24;
  reg [2:0] commandBuffer__T_118_addr_pipe_0;
  reg [31:0] _RAND_25;
  reg [4:0] commandArgumentBuffer__T_120_addr_pipe_0;
  reg [31:0] _RAND_26;
  reg [4:0] commandArgumentBuffer__T_122_addr_pipe_0;
  reg [31:0] _RAND_27;
  reg [4:0] commandArgumentBuffer__T_124_addr_pipe_0;
  reg [31:0] _RAND_28;
  reg [4:0] commandArgumentBuffer__T_126_addr_pipe_0;
  reg [31:0] _RAND_29;
  reg [4:0] commandArgumentBuffer__T_128_addr_pipe_0;
  reg [31:0] _RAND_30;
  reg [4:0] commandArgumentBuffer__T_130_addr_pipe_0;
  reg [31:0] _RAND_31;
  reg [4:0] commandArgumentBuffer__T_132_addr_pipe_0;
  reg [31:0] _RAND_32;
  reg [4:0] commandArgumentBuffer__T_134_addr_pipe_0;
  reg [31:0] _RAND_33;
  reg [4:0] commandArgumentBuffer__T_136_addr_pipe_0;
  reg [31:0] _RAND_34;
  reg [4:0] commandArgumentBuffer__T_138_addr_pipe_0;
  reg [31:0] _RAND_35;
  reg [4:0] commandArgumentBuffer__T_140_addr_pipe_0;
  reg [31:0] _RAND_36;
  reg [4:0] commandArgumentBuffer__T_142_addr_pipe_0;
  reg [31:0] _RAND_37;
  reg [4:0] commandArgumentBuffer__T_144_addr_pipe_0;
  reg [31:0] _RAND_38;
  reg [4:0] commandArgumentBuffer__T_146_addr_pipe_0;
  reg [31:0] _RAND_39;
  reg [4:0] commandArgumentBuffer__T_148_addr_pipe_0;
  reg [31:0] _RAND_40;
  reg [4:0] commandArgumentBuffer__T_150_addr_pipe_0;
  reg [31:0] _RAND_41;
  reg [4:0] commandArgumentBuffer__T_152_addr_pipe_0;
  reg [31:0] _RAND_42;
  reg [4:0] commandArgumentBuffer__T_154_addr_pipe_0;
  reg [31:0] _RAND_43;
  reg [4:0] commandArgumentBuffer__T_156_addr_pipe_0;
  reg [31:0] _RAND_44;
  reg [4:0] commandArgumentBuffer__T_158_addr_pipe_0;
  reg [31:0] _RAND_45;
  reg [4:0] commandArgumentBuffer__T_160_addr_pipe_0;
  reg [31:0] _RAND_46;
  reg [4:0] commandArgumentBuffer__T_162_addr_pipe_0;
  reg [31:0] _RAND_47;
  reg [4:0] commandArgumentBuffer__T_164_addr_pipe_0;
  reg [31:0] _RAND_48;
  reg [4:0] commandArgumentBuffer__T_166_addr_pipe_0;
  reg [31:0] _RAND_49;
  reg [4:0] commandArgumentBuffer__T_168_addr_pipe_0;
  reg [31:0] _RAND_50;
  reg [4:0] commandArgumentBuffer__T_170_addr_pipe_0;
  reg [31:0] _RAND_51;
  reg [4:0] commandArgumentBuffer__T_172_addr_pipe_0;
  reg [31:0] _RAND_52;
  reg [4:0] commandArgumentBuffer__T_174_addr_pipe_0;
  reg [31:0] _RAND_53;
  reg [4:0] commandArgumentBuffer__T_176_addr_pipe_0;
  reg [31:0] _RAND_54;
  reg [4:0] commandArgumentBuffer__T_178_addr_pipe_0;
  reg [31:0] _RAND_55;
  reg [4:0] commandArgumentBuffer__T_180_addr_pipe_0;
  reg [31:0] _RAND_56;
  reg [4:0] commandArgumentBuffer__T_182_addr_pipe_0;
  reg [31:0] _RAND_57;
  assign commandBuffer__T_108_addr = commandBuffer__T_108_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_108_data = commandBuffer[commandBuffer__T_108_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `else
  assign commandBuffer__T_108_data = commandBuffer__T_108_addr >= 3'h6 ? _RAND_1[0:0] : commandBuffer[commandBuffer__T_108_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_110_addr = commandBuffer__T_110_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_110_data = commandBuffer[commandBuffer__T_110_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `else
  assign commandBuffer__T_110_data = commandBuffer__T_110_addr >= 3'h6 ? _RAND_2[0:0] : commandBuffer[commandBuffer__T_110_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_112_addr = commandBuffer__T_112_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_112_data = commandBuffer[commandBuffer__T_112_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `else
  assign commandBuffer__T_112_data = commandBuffer__T_112_addr >= 3'h6 ? _RAND_3[0:0] : commandBuffer[commandBuffer__T_112_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_114_addr = commandBuffer__T_114_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_114_data = commandBuffer[commandBuffer__T_114_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `else
  assign commandBuffer__T_114_data = commandBuffer__T_114_addr >= 3'h6 ? _RAND_4[0:0] : commandBuffer[commandBuffer__T_114_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_116_addr = commandBuffer__T_116_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_116_data = commandBuffer[commandBuffer__T_116_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `else
  assign commandBuffer__T_116_data = commandBuffer__T_116_addr >= 3'h6 ? _RAND_5[0:0] : commandBuffer[commandBuffer__T_116_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_118_addr = commandBuffer__T_118_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_118_data = commandBuffer[commandBuffer__T_118_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `else
  assign commandBuffer__T_118_data = commandBuffer__T_118_addr >= 3'h6 ? _RAND_6[0:0] : commandBuffer[commandBuffer__T_118_addr]; // @[SpiReceiver.scala 44:36:@18.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign commandBuffer__T_229_data = byteBuffer_2;
  assign commandBuffer__T_229_addr = 3'h0;
  assign commandBuffer__T_229_mask = 1'h1;
  assign commandBuffer__T_229_en = _T_221 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_231_data = byteBuffer_3;
  assign commandBuffer__T_231_addr = 3'h1;
  assign commandBuffer__T_231_mask = 1'h1;
  assign commandBuffer__T_231_en = _T_221 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_233_data = byteBuffer_4;
  assign commandBuffer__T_233_addr = 3'h2;
  assign commandBuffer__T_233_mask = 1'h1;
  assign commandBuffer__T_233_en = _T_221 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_235_data = byteBuffer_5;
  assign commandBuffer__T_235_addr = 3'h3;
  assign commandBuffer__T_235_mask = 1'h1;
  assign commandBuffer__T_235_en = _T_221 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_237_data = byteBuffer_6;
  assign commandBuffer__T_237_addr = 3'h4;
  assign commandBuffer__T_237_mask = 1'h1;
  assign commandBuffer__T_237_en = _T_221 ? _GEN_326 : 1'h0;
  assign commandBuffer__T_239_data = byteBuffer_7;
  assign commandBuffer__T_239_addr = 3'h5;
  assign commandBuffer__T_239_mask = 1'h1;
  assign commandBuffer__T_239_en = _T_221 ? _GEN_326 : 1'h0;
  assign commandArgumentBuffer__T_120_addr = commandArgumentBuffer__T_120_addr_pipe_0;
  assign commandArgumentBuffer__T_120_data = commandArgumentBuffer[commandArgumentBuffer__T_120_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_122_addr = commandArgumentBuffer__T_122_addr_pipe_0;
  assign commandArgumentBuffer__T_122_data = commandArgumentBuffer[commandArgumentBuffer__T_122_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_124_addr = commandArgumentBuffer__T_124_addr_pipe_0;
  assign commandArgumentBuffer__T_124_data = commandArgumentBuffer[commandArgumentBuffer__T_124_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_126_addr = commandArgumentBuffer__T_126_addr_pipe_0;
  assign commandArgumentBuffer__T_126_data = commandArgumentBuffer[commandArgumentBuffer__T_126_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_128_addr = commandArgumentBuffer__T_128_addr_pipe_0;
  assign commandArgumentBuffer__T_128_data = commandArgumentBuffer[commandArgumentBuffer__T_128_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_130_addr = commandArgumentBuffer__T_130_addr_pipe_0;
  assign commandArgumentBuffer__T_130_data = commandArgumentBuffer[commandArgumentBuffer__T_130_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_132_addr = commandArgumentBuffer__T_132_addr_pipe_0;
  assign commandArgumentBuffer__T_132_data = commandArgumentBuffer[commandArgumentBuffer__T_132_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_134_addr = commandArgumentBuffer__T_134_addr_pipe_0;
  assign commandArgumentBuffer__T_134_data = commandArgumentBuffer[commandArgumentBuffer__T_134_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_136_addr = commandArgumentBuffer__T_136_addr_pipe_0;
  assign commandArgumentBuffer__T_136_data = commandArgumentBuffer[commandArgumentBuffer__T_136_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_138_addr = commandArgumentBuffer__T_138_addr_pipe_0;
  assign commandArgumentBuffer__T_138_data = commandArgumentBuffer[commandArgumentBuffer__T_138_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_140_addr = commandArgumentBuffer__T_140_addr_pipe_0;
  assign commandArgumentBuffer__T_140_data = commandArgumentBuffer[commandArgumentBuffer__T_140_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_142_addr = commandArgumentBuffer__T_142_addr_pipe_0;
  assign commandArgumentBuffer__T_142_data = commandArgumentBuffer[commandArgumentBuffer__T_142_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_144_addr = commandArgumentBuffer__T_144_addr_pipe_0;
  assign commandArgumentBuffer__T_144_data = commandArgumentBuffer[commandArgumentBuffer__T_144_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_146_addr = commandArgumentBuffer__T_146_addr_pipe_0;
  assign commandArgumentBuffer__T_146_data = commandArgumentBuffer[commandArgumentBuffer__T_146_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_148_addr = commandArgumentBuffer__T_148_addr_pipe_0;
  assign commandArgumentBuffer__T_148_data = commandArgumentBuffer[commandArgumentBuffer__T_148_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_150_addr = commandArgumentBuffer__T_150_addr_pipe_0;
  assign commandArgumentBuffer__T_150_data = commandArgumentBuffer[commandArgumentBuffer__T_150_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_152_addr = commandArgumentBuffer__T_152_addr_pipe_0;
  assign commandArgumentBuffer__T_152_data = commandArgumentBuffer[commandArgumentBuffer__T_152_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_154_addr = commandArgumentBuffer__T_154_addr_pipe_0;
  assign commandArgumentBuffer__T_154_data = commandArgumentBuffer[commandArgumentBuffer__T_154_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_156_addr = commandArgumentBuffer__T_156_addr_pipe_0;
  assign commandArgumentBuffer__T_156_data = commandArgumentBuffer[commandArgumentBuffer__T_156_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_158_addr = commandArgumentBuffer__T_158_addr_pipe_0;
  assign commandArgumentBuffer__T_158_data = commandArgumentBuffer[commandArgumentBuffer__T_158_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_160_addr = commandArgumentBuffer__T_160_addr_pipe_0;
  assign commandArgumentBuffer__T_160_data = commandArgumentBuffer[commandArgumentBuffer__T_160_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_162_addr = commandArgumentBuffer__T_162_addr_pipe_0;
  assign commandArgumentBuffer__T_162_data = commandArgumentBuffer[commandArgumentBuffer__T_162_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_164_addr = commandArgumentBuffer__T_164_addr_pipe_0;
  assign commandArgumentBuffer__T_164_data = commandArgumentBuffer[commandArgumentBuffer__T_164_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_166_addr = commandArgumentBuffer__T_166_addr_pipe_0;
  assign commandArgumentBuffer__T_166_data = commandArgumentBuffer[commandArgumentBuffer__T_166_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_168_addr = commandArgumentBuffer__T_168_addr_pipe_0;
  assign commandArgumentBuffer__T_168_data = commandArgumentBuffer[commandArgumentBuffer__T_168_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_170_addr = commandArgumentBuffer__T_170_addr_pipe_0;
  assign commandArgumentBuffer__T_170_data = commandArgumentBuffer[commandArgumentBuffer__T_170_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_172_addr = commandArgumentBuffer__T_172_addr_pipe_0;
  assign commandArgumentBuffer__T_172_data = commandArgumentBuffer[commandArgumentBuffer__T_172_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_174_addr = commandArgumentBuffer__T_174_addr_pipe_0;
  assign commandArgumentBuffer__T_174_data = commandArgumentBuffer[commandArgumentBuffer__T_174_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_176_addr = commandArgumentBuffer__T_176_addr_pipe_0;
  assign commandArgumentBuffer__T_176_data = commandArgumentBuffer[commandArgumentBuffer__T_176_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_178_addr = commandArgumentBuffer__T_178_addr_pipe_0;
  assign commandArgumentBuffer__T_178_data = commandArgumentBuffer[commandArgumentBuffer__T_178_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_180_addr = commandArgumentBuffer__T_180_addr_pipe_0;
  assign commandArgumentBuffer__T_180_data = commandArgumentBuffer[commandArgumentBuffer__T_180_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_182_addr = commandArgumentBuffer__T_182_addr_pipe_0;
  assign commandArgumentBuffer__T_182_data = commandArgumentBuffer[commandArgumentBuffer__T_182_addr]; // @[SpiReceiver.scala 45:44:@19.4]
  assign commandArgumentBuffer__T_245_data = byteBuffer_0;
  assign commandArgumentBuffer__T_245_addr = 5'h0;
  assign commandArgumentBuffer__T_245_mask = 1'h1;
  assign commandArgumentBuffer__T_245_en = _T_221 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_247_data = byteBuffer_1;
  assign commandArgumentBuffer__T_247_addr = 5'h1;
  assign commandArgumentBuffer__T_247_mask = 1'h1;
  assign commandArgumentBuffer__T_247_en = _T_221 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_249_data = byteBuffer_2;
  assign commandArgumentBuffer__T_249_addr = 5'h2;
  assign commandArgumentBuffer__T_249_mask = 1'h1;
  assign commandArgumentBuffer__T_249_en = _T_221 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_251_data = byteBuffer_3;
  assign commandArgumentBuffer__T_251_addr = 5'h3;
  assign commandArgumentBuffer__T_251_mask = 1'h1;
  assign commandArgumentBuffer__T_251_en = _T_221 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_253_data = byteBuffer_4;
  assign commandArgumentBuffer__T_253_addr = 5'h4;
  assign commandArgumentBuffer__T_253_mask = 1'h1;
  assign commandArgumentBuffer__T_253_en = _T_221 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_255_data = byteBuffer_5;
  assign commandArgumentBuffer__T_255_addr = 5'h5;
  assign commandArgumentBuffer__T_255_mask = 1'h1;
  assign commandArgumentBuffer__T_255_en = _T_221 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_257_data = byteBuffer_6;
  assign commandArgumentBuffer__T_257_addr = 5'h6;
  assign commandArgumentBuffer__T_257_mask = 1'h1;
  assign commandArgumentBuffer__T_257_en = _T_221 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_259_data = byteBuffer_7;
  assign commandArgumentBuffer__T_259_addr = 5'h7;
  assign commandArgumentBuffer__T_259_mask = 1'h1;
  assign commandArgumentBuffer__T_259_en = _T_221 ? _GEN_341 : 1'h0;
  assign commandArgumentBuffer__T_263_data = byteBuffer_0;
  assign commandArgumentBuffer__T_263_addr = 5'h8;
  assign commandArgumentBuffer__T_263_mask = 1'h1;
  assign commandArgumentBuffer__T_263_en = _T_221 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_265_data = byteBuffer_1;
  assign commandArgumentBuffer__T_265_addr = 5'h9;
  assign commandArgumentBuffer__T_265_mask = 1'h1;
  assign commandArgumentBuffer__T_265_en = _T_221 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_267_data = byteBuffer_2;
  assign commandArgumentBuffer__T_267_addr = 5'ha;
  assign commandArgumentBuffer__T_267_mask = 1'h1;
  assign commandArgumentBuffer__T_267_en = _T_221 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_269_data = byteBuffer_3;
  assign commandArgumentBuffer__T_269_addr = 5'hb;
  assign commandArgumentBuffer__T_269_mask = 1'h1;
  assign commandArgumentBuffer__T_269_en = _T_221 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_271_data = byteBuffer_4;
  assign commandArgumentBuffer__T_271_addr = 5'hc;
  assign commandArgumentBuffer__T_271_mask = 1'h1;
  assign commandArgumentBuffer__T_271_en = _T_221 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_273_data = byteBuffer_5;
  assign commandArgumentBuffer__T_273_addr = 5'hd;
  assign commandArgumentBuffer__T_273_mask = 1'h1;
  assign commandArgumentBuffer__T_273_en = _T_221 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_275_data = byteBuffer_6;
  assign commandArgumentBuffer__T_275_addr = 5'he;
  assign commandArgumentBuffer__T_275_mask = 1'h1;
  assign commandArgumentBuffer__T_275_en = _T_221 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_277_data = byteBuffer_7;
  assign commandArgumentBuffer__T_277_addr = 5'hf;
  assign commandArgumentBuffer__T_277_mask = 1'h1;
  assign commandArgumentBuffer__T_277_en = _T_221 ? _GEN_359 : 1'h0;
  assign commandArgumentBuffer__T_281_data = byteBuffer_0;
  assign commandArgumentBuffer__T_281_addr = 5'h10;
  assign commandArgumentBuffer__T_281_mask = 1'h1;
  assign commandArgumentBuffer__T_281_en = _T_221 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_283_data = byteBuffer_1;
  assign commandArgumentBuffer__T_283_addr = 5'h11;
  assign commandArgumentBuffer__T_283_mask = 1'h1;
  assign commandArgumentBuffer__T_283_en = _T_221 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_285_data = byteBuffer_2;
  assign commandArgumentBuffer__T_285_addr = 5'h12;
  assign commandArgumentBuffer__T_285_mask = 1'h1;
  assign commandArgumentBuffer__T_285_en = _T_221 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_287_data = byteBuffer_3;
  assign commandArgumentBuffer__T_287_addr = 5'h13;
  assign commandArgumentBuffer__T_287_mask = 1'h1;
  assign commandArgumentBuffer__T_287_en = _T_221 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_289_data = byteBuffer_4;
  assign commandArgumentBuffer__T_289_addr = 5'h14;
  assign commandArgumentBuffer__T_289_mask = 1'h1;
  assign commandArgumentBuffer__T_289_en = _T_221 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_291_data = byteBuffer_5;
  assign commandArgumentBuffer__T_291_addr = 5'h15;
  assign commandArgumentBuffer__T_291_mask = 1'h1;
  assign commandArgumentBuffer__T_291_en = _T_221 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_293_data = byteBuffer_6;
  assign commandArgumentBuffer__T_293_addr = 5'h16;
  assign commandArgumentBuffer__T_293_mask = 1'h1;
  assign commandArgumentBuffer__T_293_en = _T_221 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_295_data = byteBuffer_7;
  assign commandArgumentBuffer__T_295_addr = 5'h17;
  assign commandArgumentBuffer__T_295_mask = 1'h1;
  assign commandArgumentBuffer__T_295_en = _T_221 ? _GEN_378 : 1'h0;
  assign commandArgumentBuffer__T_299_data = byteBuffer_0;
  assign commandArgumentBuffer__T_299_addr = 5'h18;
  assign commandArgumentBuffer__T_299_mask = 1'h1;
  assign commandArgumentBuffer__T_299_en = _T_221 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_301_data = byteBuffer_1;
  assign commandArgumentBuffer__T_301_addr = 5'h19;
  assign commandArgumentBuffer__T_301_mask = 1'h1;
  assign commandArgumentBuffer__T_301_en = _T_221 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_303_data = byteBuffer_2;
  assign commandArgumentBuffer__T_303_addr = 5'h1a;
  assign commandArgumentBuffer__T_303_mask = 1'h1;
  assign commandArgumentBuffer__T_303_en = _T_221 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_305_data = byteBuffer_3;
  assign commandArgumentBuffer__T_305_addr = 5'h1b;
  assign commandArgumentBuffer__T_305_mask = 1'h1;
  assign commandArgumentBuffer__T_305_en = _T_221 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_307_data = byteBuffer_4;
  assign commandArgumentBuffer__T_307_addr = 5'h1c;
  assign commandArgumentBuffer__T_307_mask = 1'h1;
  assign commandArgumentBuffer__T_307_en = _T_221 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_309_data = byteBuffer_5;
  assign commandArgumentBuffer__T_309_addr = 5'h1d;
  assign commandArgumentBuffer__T_309_mask = 1'h1;
  assign commandArgumentBuffer__T_309_en = _T_221 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_311_data = byteBuffer_6;
  assign commandArgumentBuffer__T_311_addr = 5'h1e;
  assign commandArgumentBuffer__T_311_mask = 1'h1;
  assign commandArgumentBuffer__T_311_en = _T_221 ? _GEN_397 : 1'h0;
  assign commandArgumentBuffer__T_313_data = byteBuffer_7;
  assign commandArgumentBuffer__T_313_addr = 5'h1f;
  assign commandArgumentBuffer__T_313_mask = 1'h1;
  assign commandArgumentBuffer__T_313_en = _T_221 ? _GEN_397 : 1'h0;
  assign commandVec_2 = commandBuffer__T_112_data; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@32.4]
  assign commandVec_1 = commandBuffer__T_110_data; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@30.4]
  assign commandVec_0 = commandBuffer__T_108_data; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@28.4]
  assign _T_184 = {commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 60:30:@104.4]
  assign commandVec_5 = commandBuffer__T_118_data; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@38.4]
  assign commandVec_4 = commandBuffer__T_116_data; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@36.4]
  assign commandVec_3 = commandBuffer__T_114_data; // @[SpiReceiver.scala 42:26:@16.4 SpiReceiver.scala 55:23:@34.4]
  assign _T_186 = {commandVec_5,commandVec_4,commandVec_3}; // @[SpiReceiver.scala 60:30:@106.4]
  assign _T_187 = {commandVec_5,commandVec_4,commandVec_3,commandVec_2,commandVec_1,commandVec_0}; // @[SpiReceiver.scala 60:30:@107.4]
  assign commandArgumentVec_1 = commandArgumentBuffer__T_122_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@42.4]
  assign commandArgumentVec_0 = commandArgumentBuffer__T_120_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@40.4]
  assign commandArgumentVec_3 = commandArgumentBuffer__T_126_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@46.4]
  assign commandArgumentVec_2 = commandArgumentBuffer__T_124_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@44.4]
  assign commandArgumentVec_5 = commandArgumentBuffer__T_130_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@50.4]
  assign commandArgumentVec_4 = commandArgumentBuffer__T_128_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@48.4]
  assign commandArgumentVec_7 = commandArgumentBuffer__T_134_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@54.4]
  assign commandArgumentVec_6 = commandArgumentBuffer__T_132_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@52.4]
  assign _T_194 = {commandArgumentVec_7,commandArgumentVec_6,commandArgumentVec_5,commandArgumentVec_4,commandArgumentVec_3,commandArgumentVec_2,commandArgumentVec_1,commandArgumentVec_0}; // @[SpiReceiver.scala 61:46:@115.4]
  assign commandArgumentVec_9 = commandArgumentBuffer__T_138_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@58.4]
  assign commandArgumentVec_8 = commandArgumentBuffer__T_136_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@56.4]
  assign commandArgumentVec_11 = commandArgumentBuffer__T_142_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@62.4]
  assign commandArgumentVec_10 = commandArgumentBuffer__T_140_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@60.4]
  assign commandArgumentVec_13 = commandArgumentBuffer__T_146_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@66.4]
  assign commandArgumentVec_12 = commandArgumentBuffer__T_144_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@64.4]
  assign commandArgumentVec_15 = commandArgumentBuffer__T_150_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@70.4]
  assign commandArgumentVec_14 = commandArgumentBuffer__T_148_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@68.4]
  assign _T_202 = {commandArgumentVec_15,commandArgumentVec_14,commandArgumentVec_13,commandArgumentVec_12,commandArgumentVec_11,commandArgumentVec_10,commandArgumentVec_9,commandArgumentVec_8,_T_194}; // @[SpiReceiver.scala 61:46:@123.4]
  assign commandArgumentVec_17 = commandArgumentBuffer__T_154_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@74.4]
  assign commandArgumentVec_16 = commandArgumentBuffer__T_152_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@72.4]
  assign commandArgumentVec_19 = commandArgumentBuffer__T_158_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@78.4]
  assign commandArgumentVec_18 = commandArgumentBuffer__T_156_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@76.4]
  assign commandArgumentVec_21 = commandArgumentBuffer__T_162_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@82.4]
  assign commandArgumentVec_20 = commandArgumentBuffer__T_160_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@80.4]
  assign commandArgumentVec_23 = commandArgumentBuffer__T_166_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@86.4]
  assign commandArgumentVec_22 = commandArgumentBuffer__T_164_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@84.4]
  assign _T_209 = {commandArgumentVec_23,commandArgumentVec_22,commandArgumentVec_21,commandArgumentVec_20,commandArgumentVec_19,commandArgumentVec_18,commandArgumentVec_17,commandArgumentVec_16}; // @[SpiReceiver.scala 61:46:@130.4]
  assign commandArgumentVec_25 = commandArgumentBuffer__T_170_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@90.4]
  assign commandArgumentVec_24 = commandArgumentBuffer__T_168_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@88.4]
  assign commandArgumentVec_27 = commandArgumentBuffer__T_174_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@94.4]
  assign commandArgumentVec_26 = commandArgumentBuffer__T_172_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@92.4]
  assign commandArgumentVec_29 = commandArgumentBuffer__T_178_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@98.4]
  assign commandArgumentVec_28 = commandArgumentBuffer__T_176_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@96.4]
  assign commandArgumentVec_31 = commandArgumentBuffer__T_182_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@102.4]
  assign commandArgumentVec_30 = commandArgumentBuffer__T_180_data; // @[SpiReceiver.scala 43:34:@17.4 SpiReceiver.scala 58:31:@100.4]
  assign _T_217 = {commandArgumentVec_31,commandArgumentVec_30,commandArgumentVec_29,commandArgumentVec_28,commandArgumentVec_27,commandArgumentVec_26,commandArgumentVec_25,commandArgumentVec_24,_T_209}; // @[SpiReceiver.scala 61:46:@138.4]
  assign _T_221 = byteCounter == 3'h7; // @[SpiReceiver.scala 65:26:@142.4]
  assign _T_222 = 2'h0 == state; // @[Conditional.scala 37:30:@144.6]
  assign _T_224 = byteBuffer_0 == 1'h0; // @[SpiReceiver.scala 68:40:@146.8]
  assign _T_227 = _T_224 & byteBuffer_1; // @[SpiReceiver.scala 68:52:@148.8]
  assign _GEN_8 = _T_227 ? 2'h1 : state; // @[SpiReceiver.scala 68:81:@149.8]
  assign _GEN_12 = 1'h1; // @[SpiReceiver.scala 68:81:@149.8]
  assign _GEN_23 = _T_227 ? 8'h0 : counter; // @[SpiReceiver.scala 68:81:@149.8]
  assign _T_241 = 2'h1 == state; // @[Conditional.scala 37:30:@167.8]
  assign _T_243 = 8'h0 == counter; // @[Conditional.scala 37:30:@169.10]
  assign _T_261 = 8'h1 == counter; // @[Conditional.scala 37:30:@189.12]
  assign _T_279 = 8'h2 == counter; // @[Conditional.scala 37:30:@209.14]
  assign _T_297 = 8'h3 == counter; // @[Conditional.scala 37:30:@229.16]
  assign _GEN_64 = _T_279 ? 1'h0 : _T_297; // @[Conditional.scala 39:67:@210.14]
  assign _GEN_102 = _T_261 ? 1'h0 : _T_279; // @[Conditional.scala 39:67:@190.12]
  assign _GEN_121 = _T_261 ? 1'h0 : _GEN_64; // @[Conditional.scala 39:67:@190.12]
  assign _GEN_158 = _T_243 ? 1'h0 : _T_261; // @[Conditional.scala 40:58:@170.10]
  assign _GEN_177 = _T_243 ? 1'h0 : _GEN_102; // @[Conditional.scala 40:58:@170.10]
  assign _GEN_196 = _T_243 ? 1'h0 : _GEN_121; // @[Conditional.scala 40:58:@170.10]
  assign _T_315 = counter + 8'h1; // @[SpiReceiver.scala 94:40:@248.10]
  assign _T_316 = counter + 8'h1; // @[SpiReceiver.scala 94:40:@249.10]
  assign _T_318 = counter == 8'h3; // @[SpiReceiver.scala 95:34:@251.10]
  assign _GEN_213 = _T_318 ? 2'h2 : state; // @[SpiReceiver.scala 95:43:@252.10]
  assign _GEN_214 = _T_318 ? 8'h0 : _T_316; // @[SpiReceiver.scala 95:43:@252.10]
  assign _T_323 = 2'h2 == state; // @[Conditional.scala 37:30:@263.10]
  assign _T_344 = _T_187 == 6'h18; // @[SpiReceiver.scala 106:52:@284.12]
  assign _T_345 = _T_344 ? 2'h3 : 2'h0; // @[SpiReceiver.scala 106:33:@285.12]
  assign _GEN_215 = _T_323 ? byteBuffer_7 : readSuccess; // @[Conditional.scala 39:67:@264.10]
  assign _GEN_230 = _T_323 ? _T_345 : state; // @[Conditional.scala 39:67:@264.10]
  assign _GEN_233 = _T_241 ? _T_243 : 1'h0; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_251 = _T_241 ? _GEN_158 : 1'h0; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_270 = _T_241 ? _GEN_177 : 1'h0; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_289 = _T_241 ? _GEN_196 : 1'h0; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_306 = _T_241 ? _GEN_214 : counter; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_307 = _T_241 ? _GEN_213 : _GEN_230; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_308 = _T_241 ? readSuccess : _GEN_215; // @[Conditional.scala 39:67:@168.8]
  assign _GEN_323 = _T_222 ? _GEN_8 : _GEN_307; // @[Conditional.scala 40:58:@145.6]
  assign _GEN_326 = _T_222 ? _T_227 : 1'h0; // @[Conditional.scala 40:58:@145.6]
  assign _GEN_338 = _T_222 ? _GEN_23 : _GEN_306; // @[Conditional.scala 40:58:@145.6]
  assign _GEN_341 = _T_222 ? 1'h0 : _GEN_233; // @[Conditional.scala 40:58:@145.6]
  assign _GEN_359 = _T_222 ? 1'h0 : _GEN_251; // @[Conditional.scala 40:58:@145.6]
  assign _GEN_378 = _T_222 ? 1'h0 : _GEN_270; // @[Conditional.scala 40:58:@145.6]
  assign _GEN_397 = _T_222 ? 1'h0 : _GEN_289; // @[Conditional.scala 40:58:@145.6]
  assign _GEN_414 = _T_222 ? readSuccess : _GEN_308; // @[Conditional.scala 40:58:@145.6]
  assign _GEN_429 = _T_221 ? _GEN_323 : state; // @[SpiReceiver.scala 65:35:@143.4]
  assign _GEN_444 = _T_221 ? _GEN_338 : counter; // @[SpiReceiver.scala 65:35:@143.4]
  assign _GEN_520 = _T_221 ? _GEN_414 : readSuccess; // @[SpiReceiver.scala 65:35:@143.4]
  assign _T_347 = byteCounter + 3'h1; // @[SpiReceiver.scala 113:36:@289.4]
  assign _T_348 = byteCounter + 3'h1; // @[SpiReceiver.scala 113:36:@290.4]
  assign io_SPI_DO = io_DO; // @[SpiReceiver.scala 30:15:@9.4]
  assign io_DI = io_SPI_DI; // @[SpiReceiver.scala 29:11:@8.4]
  assign io_CommandReadFinished = state > 2'h0; // @[SpiReceiver.scala 47:28:@21.4]
  assign io_ArgumentReadFinished = state > 2'h1; // @[SpiReceiver.scala 48:29:@23.4]
  assign io_ReadSuccess = readSuccess; // @[SpiReceiver.scala 49:20:@24.4]
  assign io_Command = {_T_186,_T_184}; // @[SpiReceiver.scala 60:16:@108.4]
  assign io_CommandArgument = {_T_217,_T_202}; // @[SpiReceiver.scala 61:24:@140.4]
  assign io____counter = byteCounter; // @[SpiReceiver.scala 52:19:@26.4]
  assign io____state = {{1'd0}, state}; // @[SpiReceiver.scala 51:17:@25.4]
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
  counter = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  readSuccess = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  byteBuffer_0 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  byteBuffer_1 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  byteBuffer_2 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  byteBuffer_3 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  byteBuffer_4 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  byteBuffer_5 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  byteBuffer_6 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  byteBuffer_7 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  byteCounter = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  commandBuffer__T_108_addr_pipe_0 = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  commandBuffer__T_110_addr_pipe_0 = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  commandBuffer__T_112_addr_pipe_0 = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  commandBuffer__T_114_addr_pipe_0 = _RAND_23[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  commandBuffer__T_116_addr_pipe_0 = _RAND_24[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  commandBuffer__T_118_addr_pipe_0 = _RAND_25[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  commandArgumentBuffer__T_120_addr_pipe_0 = _RAND_26[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  commandArgumentBuffer__T_122_addr_pipe_0 = _RAND_27[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  commandArgumentBuffer__T_124_addr_pipe_0 = _RAND_28[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  commandArgumentBuffer__T_126_addr_pipe_0 = _RAND_29[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  commandArgumentBuffer__T_128_addr_pipe_0 = _RAND_30[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  commandArgumentBuffer__T_130_addr_pipe_0 = _RAND_31[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  commandArgumentBuffer__T_132_addr_pipe_0 = _RAND_32[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  commandArgumentBuffer__T_134_addr_pipe_0 = _RAND_33[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  commandArgumentBuffer__T_136_addr_pipe_0 = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  commandArgumentBuffer__T_138_addr_pipe_0 = _RAND_35[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  commandArgumentBuffer__T_140_addr_pipe_0 = _RAND_36[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  commandArgumentBuffer__T_142_addr_pipe_0 = _RAND_37[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  commandArgumentBuffer__T_144_addr_pipe_0 = _RAND_38[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  commandArgumentBuffer__T_146_addr_pipe_0 = _RAND_39[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  commandArgumentBuffer__T_148_addr_pipe_0 = _RAND_40[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  commandArgumentBuffer__T_150_addr_pipe_0 = _RAND_41[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  commandArgumentBuffer__T_152_addr_pipe_0 = _RAND_42[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  commandArgumentBuffer__T_154_addr_pipe_0 = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  commandArgumentBuffer__T_156_addr_pipe_0 = _RAND_44[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  commandArgumentBuffer__T_158_addr_pipe_0 = _RAND_45[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  commandArgumentBuffer__T_160_addr_pipe_0 = _RAND_46[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  commandArgumentBuffer__T_162_addr_pipe_0 = _RAND_47[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  commandArgumentBuffer__T_164_addr_pipe_0 = _RAND_48[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  commandArgumentBuffer__T_166_addr_pipe_0 = _RAND_49[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  commandArgumentBuffer__T_168_addr_pipe_0 = _RAND_50[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  commandArgumentBuffer__T_170_addr_pipe_0 = _RAND_51[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  commandArgumentBuffer__T_172_addr_pipe_0 = _RAND_52[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  commandArgumentBuffer__T_174_addr_pipe_0 = _RAND_53[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  commandArgumentBuffer__T_176_addr_pipe_0 = _RAND_54[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  commandArgumentBuffer__T_178_addr_pipe_0 = _RAND_55[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  commandArgumentBuffer__T_180_addr_pipe_0 = _RAND_56[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  commandArgumentBuffer__T_182_addr_pipe_0 = _RAND_57[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_SPI_CLK) begin
    if(commandBuffer__T_229_en & commandBuffer__T_229_mask) begin
      commandBuffer[commandBuffer__T_229_addr] <= commandBuffer__T_229_data; // @[SpiReceiver.scala 44:36:@18.4]
    end
    if(commandBuffer__T_231_en & commandBuffer__T_231_mask) begin
      commandBuffer[commandBuffer__T_231_addr] <= commandBuffer__T_231_data; // @[SpiReceiver.scala 44:36:@18.4]
    end
    if(commandBuffer__T_233_en & commandBuffer__T_233_mask) begin
      commandBuffer[commandBuffer__T_233_addr] <= commandBuffer__T_233_data; // @[SpiReceiver.scala 44:36:@18.4]
    end
    if(commandBuffer__T_235_en & commandBuffer__T_235_mask) begin
      commandBuffer[commandBuffer__T_235_addr] <= commandBuffer__T_235_data; // @[SpiReceiver.scala 44:36:@18.4]
    end
    if(commandBuffer__T_237_en & commandBuffer__T_237_mask) begin
      commandBuffer[commandBuffer__T_237_addr] <= commandBuffer__T_237_data; // @[SpiReceiver.scala 44:36:@18.4]
    end
    if(commandBuffer__T_239_en & commandBuffer__T_239_mask) begin
      commandBuffer[commandBuffer__T_239_addr] <= commandBuffer__T_239_data; // @[SpiReceiver.scala 44:36:@18.4]
    end
    if(commandArgumentBuffer__T_245_en & commandArgumentBuffer__T_245_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_245_addr] <= commandArgumentBuffer__T_245_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_247_en & commandArgumentBuffer__T_247_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_247_addr] <= commandArgumentBuffer__T_247_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_249_en & commandArgumentBuffer__T_249_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_249_addr] <= commandArgumentBuffer__T_249_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_251_en & commandArgumentBuffer__T_251_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_251_addr] <= commandArgumentBuffer__T_251_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_253_en & commandArgumentBuffer__T_253_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_253_addr] <= commandArgumentBuffer__T_253_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_255_en & commandArgumentBuffer__T_255_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_255_addr] <= commandArgumentBuffer__T_255_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_257_en & commandArgumentBuffer__T_257_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_257_addr] <= commandArgumentBuffer__T_257_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_259_en & commandArgumentBuffer__T_259_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_259_addr] <= commandArgumentBuffer__T_259_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_263_en & commandArgumentBuffer__T_263_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_263_addr] <= commandArgumentBuffer__T_263_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_265_en & commandArgumentBuffer__T_265_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_265_addr] <= commandArgumentBuffer__T_265_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_267_en & commandArgumentBuffer__T_267_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_267_addr] <= commandArgumentBuffer__T_267_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_269_en & commandArgumentBuffer__T_269_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_269_addr] <= commandArgumentBuffer__T_269_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_271_en & commandArgumentBuffer__T_271_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_271_addr] <= commandArgumentBuffer__T_271_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_273_en & commandArgumentBuffer__T_273_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_273_addr] <= commandArgumentBuffer__T_273_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_275_en & commandArgumentBuffer__T_275_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_275_addr] <= commandArgumentBuffer__T_275_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_277_en & commandArgumentBuffer__T_277_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_277_addr] <= commandArgumentBuffer__T_277_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_281_en & commandArgumentBuffer__T_281_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_281_addr] <= commandArgumentBuffer__T_281_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_283_en & commandArgumentBuffer__T_283_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_283_addr] <= commandArgumentBuffer__T_283_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_285_en & commandArgumentBuffer__T_285_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_285_addr] <= commandArgumentBuffer__T_285_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_287_en & commandArgumentBuffer__T_287_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_287_addr] <= commandArgumentBuffer__T_287_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_289_en & commandArgumentBuffer__T_289_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_289_addr] <= commandArgumentBuffer__T_289_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_291_en & commandArgumentBuffer__T_291_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_291_addr] <= commandArgumentBuffer__T_291_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_293_en & commandArgumentBuffer__T_293_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_293_addr] <= commandArgumentBuffer__T_293_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_295_en & commandArgumentBuffer__T_295_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_295_addr] <= commandArgumentBuffer__T_295_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_299_en & commandArgumentBuffer__T_299_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_299_addr] <= commandArgumentBuffer__T_299_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_301_en & commandArgumentBuffer__T_301_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_301_addr] <= commandArgumentBuffer__T_301_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_303_en & commandArgumentBuffer__T_303_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_303_addr] <= commandArgumentBuffer__T_303_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_305_en & commandArgumentBuffer__T_305_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_305_addr] <= commandArgumentBuffer__T_305_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_307_en & commandArgumentBuffer__T_307_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_307_addr] <= commandArgumentBuffer__T_307_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_309_en & commandArgumentBuffer__T_309_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_309_addr] <= commandArgumentBuffer__T_309_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_311_en & commandArgumentBuffer__T_311_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_311_addr] <= commandArgumentBuffer__T_311_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
    if(commandArgumentBuffer__T_313_en & commandArgumentBuffer__T_313_mask) begin
      commandArgumentBuffer[commandArgumentBuffer__T_313_addr] <= commandArgumentBuffer__T_313_data; // @[SpiReceiver.scala 45:44:@19.4]
    end
  end
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_221) begin
        if (_T_222) begin
          if (_T_227) begin
            state <= 2'h1;
          end
        end else begin
          if (_T_241) begin
            if (_T_318) begin
              state <= 2'h2;
            end
          end else begin
            if (_T_323) begin
              if (_T_344) begin
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
      counter <= 8'h0;
    end else begin
      if (_T_221) begin
        if (_T_222) begin
          if (_T_227) begin
            counter <= 8'h0;
          end
        end else begin
          if (_T_241) begin
            if (_T_318) begin
              counter <= 8'h0;
            end else begin
              counter <= _T_316;
            end
          end
        end
      end
    end
    if (reset) begin
      readSuccess <= 1'h0;
    end else begin
      if (_T_221) begin
        if (!(_T_222)) begin
          if (!(_T_241)) begin
            if (_T_323) begin
              readSuccess <= byteBuffer_7;
            end
          end
        end
      end
    end
    if (3'h0 == byteCounter) begin
      byteBuffer_0 <= io_SPI_DI;
    end
    if (3'h1 == byteCounter) begin
      byteBuffer_1 <= io_SPI_DI;
    end
    if (3'h2 == byteCounter) begin
      byteBuffer_2 <= io_SPI_DI;
    end
    if (3'h3 == byteCounter) begin
      byteBuffer_3 <= io_SPI_DI;
    end
    if (3'h4 == byteCounter) begin
      byteBuffer_4 <= io_SPI_DI;
    end
    if (3'h5 == byteCounter) begin
      byteBuffer_5 <= io_SPI_DI;
    end
    if (3'h6 == byteCounter) begin
      byteBuffer_6 <= io_SPI_DI;
    end
    if (3'h7 == byteCounter) begin
      byteBuffer_7 <= io_SPI_DI;
    end
    if (reset) begin
      byteCounter <= 3'h0;
    end else begin
      byteCounter <= _T_348;
    end
    if (_GEN_12) begin
      commandBuffer__T_108_addr_pipe_0 <= 3'h0;
    end
    if (_GEN_12) begin
      commandBuffer__T_110_addr_pipe_0 <= 3'h1;
    end
    if (_GEN_12) begin
      commandBuffer__T_112_addr_pipe_0 <= 3'h2;
    end
    if (_GEN_12) begin
      commandBuffer__T_114_addr_pipe_0 <= 3'h3;
    end
    if (_GEN_12) begin
      commandBuffer__T_116_addr_pipe_0 <= 3'h4;
    end
    if (_GEN_12) begin
      commandBuffer__T_118_addr_pipe_0 <= 3'h5;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_120_addr_pipe_0 <= 5'h0;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_122_addr_pipe_0 <= 5'h1;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_124_addr_pipe_0 <= 5'h2;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_126_addr_pipe_0 <= 5'h3;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_128_addr_pipe_0 <= 5'h4;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_130_addr_pipe_0 <= 5'h5;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_132_addr_pipe_0 <= 5'h6;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_134_addr_pipe_0 <= 5'h7;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_136_addr_pipe_0 <= 5'h8;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_138_addr_pipe_0 <= 5'h9;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_140_addr_pipe_0 <= 5'ha;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_142_addr_pipe_0 <= 5'hb;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_144_addr_pipe_0 <= 5'hc;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_146_addr_pipe_0 <= 5'hd;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_148_addr_pipe_0 <= 5'he;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_150_addr_pipe_0 <= 5'hf;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_152_addr_pipe_0 <= 5'h10;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_154_addr_pipe_0 <= 5'h11;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_156_addr_pipe_0 <= 5'h12;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_158_addr_pipe_0 <= 5'h13;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_160_addr_pipe_0 <= 5'h14;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_162_addr_pipe_0 <= 5'h15;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_164_addr_pipe_0 <= 5'h16;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_166_addr_pipe_0 <= 5'h17;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_168_addr_pipe_0 <= 5'h18;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_170_addr_pipe_0 <= 5'h19;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_172_addr_pipe_0 <= 5'h1a;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_174_addr_pipe_0 <= 5'h1b;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_176_addr_pipe_0 <= 5'h1c;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_178_addr_pipe_0 <= 5'h1d;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_180_addr_pipe_0 <= 5'h1e;
    end
    if (_GEN_12) begin
      commandArgumentBuffer__T_182_addr_pipe_0 <= 5'h1f;
    end
  end
endmodule
