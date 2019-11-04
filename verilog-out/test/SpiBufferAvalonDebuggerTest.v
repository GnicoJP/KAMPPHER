`timescale 1ns/1ns
module SpiBufferAvalonDebuggerTest();
    reg DI;
    reg CS;
    reg CLK;

    wire [7:0] outDat;
    reg [7:0] inDat;
    wire outSucc;

    integer i;

    reg [6:0] address;
    reg avalon_read;
    wire [63:0] result;

    reg dbg_clk;
    reg rst;

    SpiBuffer sb(.reset(rst), .DI(DI), .CS(CS), .CLK(CLK), .Buffer(outDat), .Changed(outSucc), .IsInitialized(1));
    SpiBufferAvalonDebugger dbg(.clock(dbg_clk), .reset(rst), .io_InputBuffer(outDat), .io_BufferChanged(outSucc), .io_Avalon_address(address), .io_Avalon_read(avalon_read), .io_Avalon_readdata(result));

    task Init;
        begin
            rst = 0;
            #1 rst = 1;
            dbg_clk = 0;
            address = 0;
            #1 dbg_clk = 1;
            #1 rst = 0;
        end
    endtask

    task doClock;
        begin
            #1 CLK = 0;
            dbg_clk = 0;
            #1 dbg_clk = 1;
            #1 CLK = 1;
            dbg_clk = 0;
            #1 dbg_clk = 1;
        end
    endtask

    task doWrite;
        begin
            for(i = 7;i >= 0; i = i - 1) begin
                DI = inDat[i];
                doClock();
            end
        end
    endtask

    initial begin
        Init();
        doClock();
        doClock();
        doClock();
        doClock();
        doClock();
        CS = 1;
        doClock();
        doClock();
        CS = 0;
        inDat = 122;
        doWrite();
        inDat = 128;
        doWrite();
        CS = 1;
        doClock();
        doClock();
        CS = 0;
        inDat = 12;
        doWrite();
        inDat = 64;
        doWrite();
        doClock();

        for(i = 0; i < 10; i = i + 1) begin
            address = i;
            doClock();
        end
    end
endmodule
