`timescale 1ns/1ns
module SpiBufferAvalonDebuggerTest();
    reg DI;
    reg CS;
    reg CLK;

    wire [7:0] outDat;
    reg [7:0] inDat;
    wire outSucc;

    integer i;

    reg address;
    wire [63:0] result;

    reg dbg_clk;
    reg rst;

    SpiBuffer sb(.DI(DI), .CS(CS), .CLK(CLK), .Buffer(outDat), .Changed(outSucc));
    SpiBufferAvalonDebugger dbg(.clock(dbg_clk), .reset(rst), .io_InputBuffer(outDat), .io_BufferChanged(outSucc), .io_Avalon_address(address), .io_Avalon_read(1), .io_Avalon_readdata(result));

    task doClock;
        begin
            #1 CLK = 0;
            dbg_clk = 0;
            #1 CLK = 1;
            dbg_clk = 1;
            #2 CLK = 0;
            dbg_clk = 0;
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

    task doCheck;
        begin
            address = 0;
            dbg_clk = 0;
            #1 dbg_clk = 1;
            #1 address = 1;
            dbg_clk = 0;
            #1 dbg_clk = 1;
        end
    endtask

    initial begin
        rst = 1;
        dbg_clk = 0;
        #1 dbg_clk = 1;
        #1 rst = 0;
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
        doCheck();
        inDat = 128;
        doWrite();
        doCheck();
        CS = 1;
        doClock();
        doClock();
        CS = 0;
        inDat = 12;
        doWrite();
        doCheck();
        inDat = 64;
        doWrite();
        doCheck();
        doClock();
    end
endmodule
