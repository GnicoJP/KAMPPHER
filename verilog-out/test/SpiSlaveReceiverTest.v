`timescale 1ns/1ns

module SpiSlaveReceiverTest();
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
    wire [5:0] K;
    wire [31:0] L;

    assign blockSize = 2048;

    task do_clock;
        begin
            #1 __clk = 1'b1;
            #1 __clk = 1'b0;
            CLK = 1'b1;
            #1 __clk = 1'b1;
            #1 __clk = 1'b0;
            CLK = 1'b0;
        end
    endtask
    
    task do_clock2;
        begin
            #1 __clk = 1'b1;
            #1 __clk = 1'b0;
        end
    endtask
    
    task Init;
        begin
            rest = 0;
            __clk = 0;
            #1 rest = 1;
            __clk = 1;
            #1 rest = 0;
            __clk = 0;
            CS = 1;
            DI = 1;
            for(i = 0; i < 74; i = i + 1) begin
                do_clock();
            end
        end
    endtask

    assign K = 123;
    assign L = 128913;

    SpiBuffer spiBuf(.RST(rest), .DI(DI), .CS(CS), .CLK(CLK), .Buffer(Buf), .Changed(changed));
    SpiSlaveReceiver tester(.clock(__clk), .reset(rest), .io_InputBuffer(Buf), .io_BufferChanged(changed), .io_DataBlockSize(blockSize), .io_CommandReadFinished(CommandReadFinished), .io_ArgumentReadFinished(ArgumentReadFinished), .io_ReadSuccess(ReadSuccess), .io_Command(Command), .io_CommandArgument(CommandArgument), .io____state(__state));
    initial begin
        CS = 1'b1;
        CLK = 1'b0;
        __clk = 1'b0;
        DI = 1'b1;
        Init();
        CS = 1'b0;

        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end

// Test Command.
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

        for(i = 5; i >= 0; i = i - 1) begin
            do_clock();
        end
        
        DI = 1'b1;
        do_clock();
        $stop;
    end
endmodule
