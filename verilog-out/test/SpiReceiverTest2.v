`timescale 1ns/1ns

module SpiReceiverTest2(
    output SPI_CLK,
    output SPI_CS,
    output SPI_DI,
    output SPI_DO,
    output        CommandReadFinished,
    output        ArgumentReadFinished,
    output        ReadSuccess,
    output [5:0]  Command,
    output [31:0] CommandArgument,
    output [2:0]  __state,
    output [2:0]  __counter,
    output [7:0]  __buffer,
    output debug_CMD0,
    output debug_CMD8,
    output debug_ACMD41,
    output debug_CMD16
);
    reg clk;
    reg __clk;
    reg di;

    reg rest;

    wire __ignore;

    integer i, j;
    reg [5:0] K;
    reg [31:0] L;

    assign SPI_CLK = clk;
    assign SPI_CS = 1'b0;
    assign SPI_DI = di;

    task do_clock;
        begin
            #1 __clk = 1'b1;
            clk = 1'b1;
            #1 __clk = 1'b0;
            #1 __clk = 1'b1;
            clk = 1'b0;
            #1 __clk = 1'b0;
        end
    endtask

    task send_spi;
        begin
            di = 1'b0;
            do_clock();

            di = 1'b1;
            do_clock();

            for(i = 0;i < 6; i = i + 1) begin
                di = K[i];
                do_clock();
            end

            for(i = 0; i < 32; i = i + 1) begin
                di = L[i];
                do_clock();
            end

            for(i = 0; i < 6; i = i + 1) begin
                do_clock();
            end
            
            di = 1'b1;
            do_clock();
        end
    endtask
    
    SpiReceiver tester(.clock(__clk), .reset(rest), .io_SPI_CLK(clk), .io_SPI_CS(1'b0), .io_SPI_DI(di), .io_SPI_DO(SPI_DO), .io_DO(1'b0), .io_DI(__ignore), .io_CommandReadFinished(CommandReadFinished), .io_ArgumentReadFinished(ArgumentReadFinished), .io_ReadSuccess(ReadSuccess), .io_Command(Command), .io_CommandArgument(CommandArgument), .io____state(__state), .io____counter(__counter), .io____buffer(__buffer));
    SpiReceiverLedDebugger tester2(.clock(__clk), .reset(rest), .io_CommandReadFinished(CommandReadFinished), .io_ArgumentReadFinished(ArgumentReadFinished), .io_ReadSuccess(ReadSuccess), .io_Command(Command), .io_CommandArgument(CommandArgument), .io_CMD0(debug_CMD0), .io_CMD8(debug_CMD8), .io_ACMD41(debug_ACMD41), .io_CMD16(debug_CMD16));
    initial begin
        rest = 1'b1;
        clk = 1'b0;
        di = 1'b1;
        K = 50;
        L = 1218;

        do_clock();
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
