module SpiStabilizer(
    input MOSI,
    input CLK,
    input CS,
    input reset,
    output IsInitialized
);
    reg [6:0] initial_count;

    assign IsInitialized = initial_count == 74;

    always @(posedge CLK or posedge reset) begin
         if(reset) begin
            initial_count = 0;
        end else if(initial_count != 74) begin
            initial_count = (MOSI && CS) ? (initial_count + 1) : 0;
        end 
    end
endmodule
