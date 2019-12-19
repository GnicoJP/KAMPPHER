module SpiBuffer(
    input DI,
    input CLK,
    input CS,
    input reset,
    input IsInitialized,
    output [7:0] Buffer,
    output Changed
);
    reg [2:0] counter;
    reg [7:0] inner_buffer;
    reg [7:0] outer_buffer;
    reg changed;

    wire [7:0] next_buffer;

    assign Buffer = outer_buffer;
    assign Changed = changed;

    assign next_buffer = {inner_buffer[6:0], DI};
    
    always @(posedge CLK or posedge reset) begin
        if(reset) begin
            changed <= 0;
        end else if(IsInitialized) begin
            if (~CS) begin
                if (counter == 3'b111) begin
                    changed <= 1;
                end else if (counter == 3'b100) begin
                    changed <= 0;
                end
            end
        end
    end 

    always @(posedge CLK) begin
        if (reset == 0 && IsInitialized) begin
            if (CS) begin
                counter <= 0;
                inner_buffer <= 8'b11111111;
            end else begin
                inner_buffer <= next_buffer;
                if (counter == 3'b111) begin
                    outer_buffer = next_buffer;
                end
                counter <= counter + 1;
            end
        end else begin
            counter <= 0;
            inner_buffer <= 8'b11111111;
        end
    end
endmodule
