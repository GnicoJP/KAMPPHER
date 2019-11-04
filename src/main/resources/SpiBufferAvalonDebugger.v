module SpiBufferAvalonDebugger(
  input         clock,
  input         reset,
  input  [6:0]  io_Avalon_address,
  input         io_Avalon_read,
  output [63:0] io_Avalon_readdata,
  input         io_Avalon_write,
  input  [63:0] io_Avalon_writedata,
  output        io_Avalon_waitrequest,
  input  [7:0]  io_InputBuffer,
  input         io_BufferChanged
);
reg [7:0] mem [0:127];
reg waitrequest;
reg [2:0] bufferchanged_history;

wire [6:0] itr;
wire [6:0] mem0_next_inner;
wire [7:0] mem0_next;

assign io_Avalon_readdata = {56'b0, mem[io_Avalon_address]};
assign io_Avalon_waitrequest = waitrequest;

assign itr = mem[0][6:0];
assign mem0_next_inner = itr + 7'b1;
assign mem0_next =  mem0_next_inner == 7'b0 ? 8'b1 : {1'b0, mem0_next_inner};

always @(posedge(clock)) begin
    if(reset) begin
        mem[0] = 8'b1;
        bufferchanged_history = 3'b111;
        waitrequest = 1'b0;
    end else begin
        bufferchanged_history = {bufferchanged_history[1:0], io_BufferChanged};
        if(bufferchanged_history == 3'b011) begin
            $display("RAISE itr[%b]", itr);
            waitrequest = 1'b1;
            mem[itr] <= io_InputBuffer;
            $display("RAISE itr[%b]", itr);
            mem[0] <= mem0_next;
            $display("RAISE itr[%b]", itr);
        end else begin
            waitrequest = 1'b0;
            $display("FALL itr[%b]", itr);
        end
    end
end

endmodule
