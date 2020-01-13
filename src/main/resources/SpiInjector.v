module SpiInjector(
    input async_reset,
    input CLK,
    input MOSI_IN,
    output MOSI_OUT,
    input MISO_IN,
    output MISO_OUT,
    input io_MOSIWaitingWriteToken,
    input [7:0] io_MOSIBuffer,
    input io_IsOk,
    input [5:0] io_MOSICommand,
    input io_MOSICommandReadFinished,
    input io_MOSIArgumentReadFinished,
    input io_MOSIReadSuccess,

    input [7:0] io_MISOBuffer,
    input io_BufferChanged,

    input io_StopTransIfInterrupted,
    // BLOCK ROM PORTS
    // input [7:0] blkrom_Q,
    // output [7:0] blkrom_address,
    // output blkrom_inclock,
    // output blkrom_inclocken,
    // output blkrom_outclock,
    // output blkrom_outclocken,

    output [7:0] io___dbg_state
);
    reg MOSIoutDat;
    reg MOSIsel;
    reg MISOoutDat;
    reg MISOsel;
    reg [2:0] counter;
    assign MOSI_OUT = MOSIsel ? MOSIoutDat : MOSI_IN;
    assign MISO_OUT = MISOsel ? MISOoutDat : MISO_IN;

    reg io_MOSIReadSuccess_hist;
    reg io_MOSICommandReadFinished_hist;
    reg io_MOSIArgumentReadFinished_hist;
    reg io_MOSIWaitingWriteToken_hist;
    reg io_BufferChanged_hist;

    reg [3:0] state;

    assign io___dbg_state = {4'b0, state};

    reg [0:7] stoptrans;
    initial begin
        stoptrans <= 8'b11111101;
    end

    always @(negedge CLK, posedge async_reset) begin
        if(async_reset) begin
            counter <= 8'b0;
            MOSIoutDat <= 1;
            MISOoutDat <= 0;
            MOSIsel <= 0;
            MISOsel <= 0;
            state <= 0;
            io_MOSIReadSuccess_hist <= 0;
            io_MOSICommandReadFinished_hist <= 0;
            io_MOSIArgumentReadFinished_hist <= 0;
            io_BufferChanged_hist <= 0;
            stoptrans <= 8'b11111101;
        end else begin
            case(state)
                4'b0000: begin
                    MOSIsel <= 0;
                    if (~io_MOSIReadSuccess_hist && io_MOSIReadSuccess) begin
                        case (io_MOSICommand)
                            55:      state <= 4'b0001;
                            24:      state <= 4'b0011;
                            25:      state <= 4'b0011;
                            default: state <= 4'b0000;
                        endcase
                    end
                    counter <= 0;
                end
                4'b0001: begin
                    if (~io_MOSICommandReadFinished_hist && io_MOSICommandReadFinished) begin
                        if (io_MOSICommand == 23) begin // SetEraseBlockCount
                            state <= 4'b0010;
                            MOSIsel <= 1;
                            MOSIoutDat <= 0;
                        end else begin
                            state <= 4'b0000;
                        end
                    end
                end
                4'b0010: begin // SetEraseBlockCount
                    if (~io_MOSIArgumentReadFinished_hist && io_MOSIArgumentReadFinished) begin
                        MOSIsel <= 0;
                        state <= 4'b0000;
                    end
                end
                4'b0011: begin // Write Command~Token:WAIT for busy -> Write Stop Trans Token
                    if (~io_BufferChanged_hist && io_BufferChanged) begin
                        if (io_MISOBuffer == 0) begin
                            if(~io_IsOk) begin
                                MOSIoutDat <= stoptrans[0];
                                MOSIsel <= 1;
                                counter <= 1;
                            end
                            if (io_MOSICommand == 24) begin
                                state <= {1'b0, ~io_IsOk, 2'b00}; //io_IsOk ? 4'b0100 : 4'b0000;
                            end else begin
                                state <= {3'b010, io_IsOk}; // io_IsOk ? 4'b0101 : 4'b0100;
                            end
                        end
                    end
                end
                4'b0100: begin // Write Stop Transmit Token.(CMD24) on ERROR.
                    MOSIoutDat <= stoptrans[counter];
                    if(counter == 3'b111) begin
                        state <= {io_StopTransIfInterrupted, 3'b111}; // io_StopTransIfInterrupted ? 4'b1111 : 4'b0111;
                    end
                    counter <= counter + 1;
                end
                4'b0101: begin // Waiting Write Token. (CMD25)
                    if (~io_MOSIWaitingWriteToken_hist && io_MOSIWaitingWriteToken) begin
                        state <= 4'b1000;
                    end else if (~io_MOSIReadSuccess) begin // end transmission
                        state <= 4'b0000;
                    end
                end
                4'b0111: begin // Error injection...(TODO)
                end
                4'b1000: begin // check if next block writing is valid on multi block write
                    if (~io_BufferChanged_hist && io_BufferChanged) begin
                        if(io_MISOBuffer[4] == 0 && io_MISOBuffer[0] == 1) begin
                            if(io_MISOBuffer[3:1] == 5'b010) begin
                                state <= 4'b1001;
                            end else begin
                                state <= 4'b0000;
                            end
                        end
                    end
                end
                4'b1001: begin // Waiting for busy.
                    if (~io_BufferChanged_hist && io_BufferChanged) begin
                        if (io_MISOBuffer != 0) begin // check if busy state was ended.
                            if (io_IsOk) begin
                                state <= 4'b0101;
                                MISOsel <= 0;
                                MOSIsel <= 0;
                            end else begin
                                state <= 4'b1010;
                                MISOsel <= 1;
                                MOSIsel <= 1;
                            end
                            MISOoutDat <= 1;
                            MOSIoutDat <= stoptrans[0];
                            counter <= 1;
                        end
                    end
                end
                4'b1010: begin // Write Stop Transmit Token.(CMD25) on ERROR.
                    MOSIoutDat <= stoptrans[counter];
                    if(counter == 3'b111) begin
                        state <= 4'b1011;
                    end
                    counter <= counter + 1;
                end
                4'b1011: begin // Waiting for Master's (Stop Trans|Data) Token.
                    if (~io_BufferChanged_hist && io_BufferChanged) begin
                        MOSIoutDat <= 1;
                        if (io_MOSIBuffer == 8'b11111101) begin // Stop trans!
                            // state <= 4'b1100;
                            // TODO TEST
                            MOSIsel <= 0;
                            MISOsel <= 0;
                            state <= 4'b0000;
                        end else if (io_MOSIBuffer == 8'b11111100) begin // writing even else...
                            state <= io_StopTransIfInterrupted ? 4'b1111 : 4'b0111;
                        end
                    end
                end
                4'b1100: begin // Send Not Busy.
                    if (~io_BufferChanged_hist && io_BufferChanged) begin
                        MISOoutDat <= 0;
                        state <= 4'b1101;
                    end
                end
                4'b1101: begin // Send Busy.
                    if (~io_BufferChanged_hist && io_BufferChanged) begin
                        MISOsel <= 0;
                        MOSIsel <= 0;
                        state <= 4'b0000;
                    end
                end
                4'b1111: begin // STOP SENDING....
                    MOSIoutDat <= 1;
                end
            endcase
            io_MOSIReadSuccess_hist <= io_MOSIReadSuccess;
            io_MOSICommandReadFinished_hist <= io_MOSICommandReadFinished;
            io_MOSIArgumentReadFinished_hist <= io_MOSIArgumentReadFinished;
            io_BufferChanged_hist <= io_BufferChanged;
            io_MOSIWaitingWriteToken_hist <= io_MOSIWaitingWriteToken;
        end
    end
endmodule
