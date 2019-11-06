`timescale 1ns/1ns
module CombinedSpiBufferAvalonDebuggerTest();
    reg DI;
    reg DI2;
    reg CS;
    reg CS2;
    reg CLK;

    reg [7:0] inDat;
    reg [7:0] inDat2;
    wire outSucc;
    wire [7:0] outDat;
    wire outSucc2;
    wire [7:0] outDat2;

    integer i;

    reg [5:0] address;
    reg avalon_read;
    wire [63:0] result;

    reg dbg_clk;
    reg rst;

    SpiBuffer mosi(.reset(rst), .DI(DI), .CS(CS), .CLK(CLK), .Buffer(outDat), .Changed(outSucc), .IsInitialized(1));
    SpiBuffer miso(.reset(rst), .DI(DI2), .CS(CS2), .CLK(CLK), .Buffer(outDat2), .Changed(outSucc2), .IsInitialized(1));
    CombinedSpiBufferAvalonDebugger dbg(.clock(dbg_clk), .reset(rst), .io_MOSI_Buffer(outDat), .io_MOSI_BufferChanged(outSucc), .io_MISO_Buffer(outDat2), .io_MISO_BufferChanged(outSucc2), .io_Avalon_address(address), .io_Avalon_read(avalon_read), .io_Avalon_readdata(result));

    task Init;
        begin
            CS = 1; CS2 = 1; DI = 1; CLK = 0;
            rst = 0;
            #1 rst = 1;
            dbg_clk = 0;
            address = 0;
            #1 dbg_clk = 1;
            #1 rst = 0;
            CLK = 1;
            doClock();
            doClock();
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
                DI2 = inDat2[i];
                doClock();
            end
        end
    endtask

    task Part1;
        begin
            CS = 0;
            CS2 = 0;
            inDat = 122;
            inDat2 = 20;
            doWrite();
            inDat = 128;
            inDat2 = 200;
            doWrite();
            CS = 1;
            CS2 = 1;
            doClock();
            doClock();
            CS = 0;
            CS2 = 0;
            inDat = 12;
            inDat2 = 100;
            doWrite();
            inDat = 8;
            inDat2 = 19;
            doWrite();
            inDat = 1;
            inDat2 = 2;
            doWrite();
            inDat = 8;
            inDat2 = 16;
            doWrite();
            CS = 1;
            inDat = 90;
            doWrite();
            CS2 = 1;
            CS = 0;
            inDat = 60;
            doWrite();
            CS2 = 1;
            CS = 1;
            doClock();
        end
    endtask

    task Part2;
        begin
            CS = 0;
            CS2 = 0;
            inDat = 122;
            inDat2 = 20;
            doWrite();
            inDat = 128;
            inDat2 = 200;
            doWrite();
            CS = 1;
            CS2 = 1;
            doClock();
            doClock();
            CS = 0;
            CS2 = 0;
            inDat = 12;
            inDat2 = 100;
            doWrite();
            inDat = 8;
            inDat2 = 19;
            doWrite();
            inDat = 1;
            inDat2 = 2;
            doWrite();
            inDat = 8;
            inDat2 = 16;
            doWrite();
            inDat = 90;
            inDat = 60;
            doWrite();
            CS2 = 1;
            CS = 1;
            doClock();
        end
    endtask

    initial begin
        Init();
        address = 0;
        avalon_read = 1;
        Part1();
        address = 1;
        doClock();
        address = 2;
        doClock();
        address = 0;
        Part2();
        address = 3;
        doClock();
        address = 4;
        doClock();
        $stop;
    end
endmodule
