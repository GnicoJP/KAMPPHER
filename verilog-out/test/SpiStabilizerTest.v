`timescale 1ns/1ns
module SpiStabilizerTest();
    reg DI;
    reg CS;
    reg CLK;

    reg RST;
    reg RESULT;

    integer i;

    SpiStabilizer ss(.reset(RST), .MOSI(DI), .CS(CS), .CLK(CLK), .IsInitialized(RESULT));

    task Init;
        begin
            RST = 0;
            #1 RST = 1;
            #1 RST = 0;
        end
    endtask

    task doClock;
        begin
            #1 CLK = 0;
            #1 CLK = 1;
            #2 CLK = 0;
        end
    endtask

    initial begin
        Init();
        CS = 0;
        DI = 0;
        for(i = 0; i < 100; i = i + 1)
            doClock();
        CS = 1;
        DI = 1;
        for(i = 0; i < 40; i = i + 1)
            doClock();
        CS = 0;
        DI = 1;
        doClock();
        CS = 1;
        DI = 1;
        for(i = 0; i < 90; i = i + 1)
            doClock();
        
    end
endmodule
