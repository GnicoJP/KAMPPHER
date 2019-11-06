module CombinedSpiBufferAvalonDebugger(
  input         clock,
  input         reset,
  input  [5:0]  io_Avalon_address,
  input         io_Avalon_read,
  output [63:0] io_Avalon_readdata,
  input         io_Avalon_write,
  input  [63:0] io_Avalon_writedata,
  output        io_Avalon_waitrequest,
  input  [7:0]  io_MISO_Buffer,
  input         io_MISO_BufferChanged,
  input  [7:0]  io_MOSI_Buffer,
  input         io_MOSI_BufferChanged
);
reg [7:0] mem_miso [0:6];
reg [7:0] mem_mosi [0:6];
reg [2:0] miso_itr;
reg [2:0] mosi_itr;
reg waitrequest;
reg [2:0] miso_bufferchanged_history;
reg [2:0] mosi_bufferchanged_history;

wire [5:0] itr;
wire [5:0] itrPlusOne;
wire [5:0] itrPlusTwo;
wire [5:0] itrPlusThree;

wire [63:0] mosi_out;
wire [63:0] miso_out;

reg [63:0] mem [0:63];
assign io_Avalon_readdata = mem[io_Avalon_address];
assign io_Avalon_waitrequest = waitrequest;

assign itr = mem[0][5:0];
assign itrPlusOne = itr + 1;
assign itrPlusTwo = itr + 2;
assign itrPlusThree = itr + 3;

assign mosi_out = {mem_mosi[6], mem_mosi[5], mem_mosi[4], mem_mosi[3], mem_mosi[2], mem_mosi[1], mem_mosi[0], 8'b0};
assign miso_out = {mem_miso[6], mem_miso[5], mem_miso[4], mem_miso[3], mem_miso[2], mem_miso[1], mem_miso[0], 8'b1};

wire mosi_event;
wire miso_event;

wire mosi_complete;
wire miso_complete;

assign mosi_event = mosi_bufferchanged_history == 3'b011;
assign miso_event = miso_bufferchanged_history == 3'b011;

assign mosi_complete = mosi_itr == 3'b111;
assign miso_complete = miso_itr == 3'b111;

always @(posedge(clock)) begin
    if(reset) begin
        mem[0] <= 64'b1;
        miso_bufferchanged_history = 3'b111;
        mosi_bufferchanged_history = 3'b111;
        waitrequest = 1'b0;
        miso_itr <= 0;
        mosi_itr <= 0;
    end else begin
        // miso
        miso_bufferchanged_history = {miso_bufferchanged_history[1:0], io_MISO_BufferChanged};
        if(miso_event) begin
            mem_miso[miso_itr] = io_MISO_Buffer;
            miso_itr <= miso_itr + 1;
        end else if (miso_itr == 3'b111) begin
            miso_itr <= 0;
        end

        // mosi
        mosi_bufferchanged_history = {mosi_bufferchanged_history[1:0], io_MOSI_BufferChanged};
        if(mosi_event) begin
            mem_mosi[mosi_itr] = io_MOSI_Buffer;
            mosi_itr <= mosi_itr + 1;
        end else if (mosi_itr == 3'b111) begin
            mosi_itr <= 0;
        end

        // write to mem
        waitrequest = mosi_complete || miso_complete;
        if(mosi_complete && miso_complete) begin
            mem[itr] <= mosi_out;
            mem[itrPlusOne] <= miso_out;
            mem[0] <= ((itrPlusOne == 0) || (itrPlusTwo == 0)) ? {58'b0, itrPlusThree} : {58'b0, itrPlusTwo};
        end else if(mosi_complete) begin
            mem[itr] <= mosi_out;
            mem[0] <= (itrPlusOne == 0) ? {58'b0, itrPlusTwo} : {58'b0, itrPlusOne};
        end else if(miso_complete) begin
            mem[itr] <= miso_out;
            mem[0] <= (itrPlusOne == 0) ? {58'b0, itrPlusTwo} : {58'b0, itrPlusOne};
        end
    end
end


endmodule
