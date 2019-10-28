module SpiSlaveReceiverAvalonDebugger(
  input         clock,
  input         reset,
  input  [5:0]  io_Avalon_address,
  input         io_Avalon_read,
  output [63:0] io_Avalon_readdata,
  input         io_Avalon_write,
  input  [63:0] io_Avalon_writedata,
  output        io_Avalon_waitrequest,
  input  [5:0]  io_Command,
  input  [31:0] io_CommandArgument,
  input         io_ArgumentReadFinished
);
reg [37:0] mem [0:63];
reg waitrequest;
reg bufferchanged_history;

wire [5:0] itr;
wire [5:0] mem0_next_inner;
wire [38:0] mem0_next;

assign io_Avalon_readdata = {26'b0, mem[io_Avalon_address]};
assign io_Avalon_waitrequest = waitrequest;

assign itr = mem[0][5:0];
assign mem0_next_inner = itr + 7'b1;
assign mem0_next =  mem0_next_inner == 7'b0 ? 38'b1 : {32'b0, mem0_next_inner};

always @(posedge(clock)) begin
    if(reset) begin
        mem[0] <= 38'b1;
        bufferchanged_history <= 1'b1;
        waitrequest = 1'b0;
    end else begin
        if(~bufferchanged_history & io_ArgumentReadFinished) begin
            $display("RAISE itr[%b]", itr);
            waitrequest = 1'b1;
            mem[itr] <= {io_Command, io_CommandArgument};
            $display("RAISE itr[%b]", itr);
            mem[0] <= mem0_next;
            $display("RAISE itr[%b]", itr);
        end else begin
            waitrequest = 1'b0;
            $display("FALL itr[%b]", itr);
        end
        bufferchanged_history <= io_ArgumentReadFinished;
    end
end

endmodule
