`timescale 1ns/1ns

module SpiReceiverTest();
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
    reg rest;

    integer i, j;
    wire [5:0] K;
    wire [31:0] L;

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

    assign K = 123;
    assign L = 128913;

    SpiBuffer spiBuf(.DI(DI), .CS(CS), .CLK(CLK), .Buffer(Buf), .Changed(changed));
    SpiReceiver tester(.clock(__clk), .reset(rest), .io_InputBuffer(Buf), .io_BufferChange(changed), .io_CommandReadFinished(CommandReadFinished), .io_ArgumentReadFinished(ArgumentReadFinished), .io_ReadSuccess(ReadSuccess), .io_Command(Command), .io_CommandArgument(CommandArgument), .io____state(__state));
    initial begin
        rest = 1'b1;
        CS = 1'b1;
        CLK = 1'b0;
        __clk = 1'b0;
        DI = 1'b1;

        do_clock();
        rest = 1'b0;
        CS = 1'b0;

        for(i = 0; i < 8; i = i + 1) begin
            do_clock();
        end

// Test Command.
        DI = 1'b0;
        do_clock();

        DI = 1'b1;
        do_clock();

        for(i = 0;i < 6; i = i + 1) begin
            DI = K[i];
            do_clock();
        end

        for(i = 0; i < 32; i = i + 1) begin
            DI = L[i];
            do_clock();
        end

        for(i = 0; i < 6; i = i + 1) begin
            do_clock();
        end
        
        DI = 1'b1;
        do_clock();
        $stop;
    end
endmodule
