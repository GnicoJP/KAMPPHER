module WritingAddressVerifierAvalonDebugger(
  input         clock,
  input         reset,
  input         io_Avalon_address,
  input         io_Avalon_read,
  output [63:0] io_Avalon_readdata,
  input         io_Avalon_write,
  input  [63:0] io_Avalon_writedata,
  output        io_Avalon_waitrequest,
  output [4:0]  io_PartitionWriteEnables,
  input  [7:0]  io___dbgInfo
);

reg [4:0] partitionEnables;

reg [7:0] counter;

reg [7:0] prev_dbgInfo;
reg [63:0] readdata;

assign io_Avalon_readdata = io_Avalon_address ? {59'b0, partitionEnables} : readdata;
assign io_Avalon_waitrequest = 0;
assign io_PartitionWriteEnables = partitionEnables;

always @(posedge clock, posedge reset) begin
  if(reset) begin
    prev_dbgInfo <= 0;
    readdata <= 0;
    counter <= 1;
    partitionEnables <= 0;
  end else begin
    if(io___dbgInfo != prev_dbgInfo) begin
      readdata <= {counter, readdata[47:0], io___dbgInfo};
      prev_dbgInfo <= io___dbgInfo;
      counter <= counter + 1;
    end
    if(io_Avalon_write && (io_Avalon_address == 64'b1)) begin
      partitionEnables <= io_Avalon_writedata[4:0];
    end
  end
end

endmodule
