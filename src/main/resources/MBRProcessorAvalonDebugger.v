module MBRProcessorAvalonDebugger(
  input         clock,
  input         reset,
  input         io_Avalon_address,
  input         io_Avalon_read,
  output [63:0] io_Avalon_readdata,
  input         io_Avalon_write,
  input  [63:0] io_Avalon_writedata,
  output        io_Avalon_waitrequest,
  input  [31:0]  io_Partition1Start,
  input  [31:0]  io_Partition2Start,
  input  [31:0]  io_Partition3Start,
  input  [31:0]  io_Partition4Start
);

assign io_Avalon_readdata = io_Avalon_address == 0 ? {io_Partition2Start, io_Partition1Start} : {io_Partition4Start, io_Partition3Start};
assign io_Avalon_waitrequest = 0;

endmodule
