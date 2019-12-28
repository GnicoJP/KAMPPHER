module MBRProcessorAvalonDebugger(
  input         clock,
  input         reset,
  input         io_Avalon_address,
  input         io_Avalon_read,
  output [63:0] io_Avalon_readdata,
  input         io_Avalon_write,
  input  [63:0] io_Avalon_writedata,
  output        io_Avalon_waitrequest,
  input  [4:0]  io___dbgInfo
);

assign io_Avalon_readdata = readdata;
assign io_Avalon_waitrequest = 0;

reg [7:0] counter;

reg [4:0] prev_dbgInfo;
reg [63:0] readdata;

always @(posedge clock, posedge reset) begin
  if(reset) begin
    prev_dbgInfo <= 0;
    readdata <= 0
    counter <= 1;
  end else if(io___dbgInfo != prev_dbgInfo) begin
    readdata <= {counter, readdata[55:8], 3'b000, io___dbgInfo};
    prev_dbgInfo <= io___dbgInfo;
    counter <= counter + 1;
  end
end

endmodule
