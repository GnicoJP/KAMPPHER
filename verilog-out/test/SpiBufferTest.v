`timescale 1ns/1ns
module SpiBufferTest();
    reg DI;
    reg CS;
    reg CLK;

    wire [7:0] outDat;
    reg [7:0] inDat;
    wire outSucc;

    integer i;

    SpiBuffer sb(.DI(DI), .CS(CS), .CLK(CLK), .Buffer(outDat), .Changed(outSucc));

    task doClock;
        begin
            #1 CLK = 0;
            #1 CLK = 1;
            #2 CLK = 0;
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
    end
endmodule
