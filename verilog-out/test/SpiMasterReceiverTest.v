`timescale 1ns/1ns

module SpiMasterReceiveTest();
    reg CLK, __clk, DI, CS, rest, commandReadFinished;
    wire changed, isDataReading, isBusy;
    wire [7:0] Buf;
    reg [5:0] Command;
    wire [31:0] blocksCount;
    wire [2:0] __state;

    integer i, j;

    SpiBuffer spiBuf(.reset(rest), .DI(DI), .CS(CS), .CLK(CLK), .Buffer(Buf), .Changed(changed), .IsInitialized(1'b1));
    SpiMasterReceiver tester(.clock(__clk), .reset(rest), .io_InputBuffer(Buf), .io_CommandReadFinished(commandReadFinished), .io_IsDataReading(isDataReading),
        .io_IsBusy(isBusy), .io_BufferChanged(changed), .io_Command(Command), .io_DataBlockSize(32'd8), .io_DataBlocksCount(blocksCount), .io____state(__state));

    task doClock;
        begin
            #1 __clk = 1'b1;
            #1 __clk = 1'b0;
            CLK = 1'b1;
            #1 __clk = 1'b1;
            #1 __clk = 1'b0;
            CLK = 1'b0;
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
        end
    endtask
    task R1;
        begin
            DI = 1'b0;
            for(i = 0; i < 8; i = i + 1) begin
                doClock();
            end
        end
    endtask

    task R1Err;
        begin
            DI = 1'b0;
            doClock();
            DI = 1'b1;
            for(i = 0; i < 7; i = i + 1) begin
                doClock();
            end
        end
    endtask

    task busy;
        begin
            DI = 1'b1;
            for(i = 0; i < 16; i = i + 1) begin
                doClock();
            end
        end
    endtask

    task dataToken;
        begin
            DI = 1'b1;
            for(i = 0; i < 7; i = i + 1) begin
                doClock();
            end
            DI = 1'b0;
            doClock();
        end
    endtask

    initial begin
        CS = 1'b1;
        CLK = 1'b0;
        __clk = 1'b0;
        DI = 1'b1;
        Init();
        CS = 1'b1;
        doClock();
        CS = 1'b0;

        for(i = 0; i < 8; i = i + 1) begin
            doClock();
        end
        
        // Error Response
        commandReadFinished = 1;
        Command = 17;
        R1Err();

        // Read Block
        R1();
        busy();
        dataToken();
        // data
        DI=1'b0;
        for(j = 0; j < 8; j = j + 1) begin
            for(i = 0; i < 8; i = i + 1) begin
                doClock();
            end
        end
        doClock();
        $stop;
    end
endmodule
