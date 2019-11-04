`timescale 1ns/1ns

module SpiSlaveReceiverTest2();
    reg CLK;
    reg __clk;
    reg DI;
    reg CS;
    wire [7:0] Buf;
    wire changed;
    wire [5:0] Command;
    wire [2:0] __state;
    wire [31:0] CommandArgument;
    wire CommandReadFinished;
    wire [7:0] blockSize;
    reg rest;

    integer i;
    reg [5:0] K;
    reg [31:0] L;

    assign blockSize = 2048;
    
    task do_clock;
        begin
            #1 __clk = 1'b1;
            CLK = 1'b1;
            #1 __clk = 1'b0;
            #1 __clk = 1'b1;
            CLK = 1'b0;
            #1 __clk = 1'b0;
        end
    endtask

    task Init;
        begin
            __clk = 0;
            #1 rest = 1;
            __clk = 1;
            #1 rest = 0;
            __clk = 0;
        end
    endtask

    task send_spi;
        begin
            DI = 1'b0;
            do_clock();

            DI = 1'b1;
            do_clock();

            for(i = 5;i >= 0; i = i - 1) begin
                DI = K[i];
                do_clock();
            end

            for(i = 31; i >= 0; i = i - 1) begin
                DI = L[i];
                do_clock();
            end

            for(i = 6; i >= 0; i = i - 1) begin
                do_clock();
            end
            
            DI = 1'b1;
            do_clock();
        end
    endtask
    
    SpiBuffer spiBuf(.reset(rest), .DI(DI), .CS(CS), .CLK(CLK), .Buffer(Buf), .Changed(changed), .IsInitialized(1));
    SpiSlaveReceiver tester(.clock(__clk), .reset(rest), .io_InputBuffer(Buf), .io_BufferChanged(changed), .io_DataBlockSize(blockSize), .io_CommandReadFinished(CommandReadFinished), .io_ArgumentReadFinished(ArgumentReadFinished), .io_ReadSuccess(ReadSuccess), .io_Command(Command), .io_CommandArgument(CommandArgument), .io____state(__state));
    SpiSlaveReceiverLedDebugger tester2(.clock(__clk), .reset(rest), .io_CommandReadFinished(CommandReadFinished), .io_ArgumentReadFinished(ArgumentReadFinished), .io_ReadSuccess(ReadSuccess), .io_Command(Command), .io_CommandArgument(CommandArgument), .io_CMD0(debug_CMD0), .io_CMD8(debug_CMD8), .io_ACMD41(debug_ACMD41), .io_CMD16(debug_CMD16), .io_CMD55(debug_CMD55));
    initial begin
        CS = 1'b1;
        CLK = 1'b0;
        __clk = 1'b0;
        DI = 1'b1;
        K = 50;
        L = 1218;

        Init();

        CS = 1'b0;
        rest = 1'b0;
        
        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end

// CMD0
        K = 0;
        send_spi();

        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end

// CMD8
        #20 K = 8;
        send_spi();

        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end

// CMD55(Invalid)
        #20 K = 55;
        send_spi();

        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end

// CMD55(Invalid)
        #20 K = 55;
        send_spi();

        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end

// CMD16
        #20 K = 16;
        send_spi();

        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end


// ACMD41
        #20 K = 55;
        send_spi();

        K = 41;
        send_spi();

        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end
        $stop;
    end
endmodule
