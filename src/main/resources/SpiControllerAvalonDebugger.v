module SpiControllerAvalonDebugger(
  input         clock,
  input         reset,
  input         io_Avalon_address,
  input         io_Avalon_read,
  output [63:0] io_Avalon_readdata,
  input         io_Avalon_write,
  input  [63:0] io_Avalon_writedata,
  output        io_Avalon_waitrequest,
  input  [31:0] io_DataBlockSize,
  input         io_ArgumentReadFinished
);
reg waitrequest;
reg bufferchanged_history;

assign io_Avalon_readdata = {32'b0, io_DataBlockSize};
assign io_Avalon_waitrequest = waitrequest;

always @(posedge(clock)) begin
    if(reset) begin
        waitrequest = 1'b0;
    end
end

endmodule
