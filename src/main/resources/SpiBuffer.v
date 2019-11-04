module SpiBuffer(
      input DI,
      input CLK,
      input CS,
      output [7:0] Buffer,
      output Changed,
      input reset
);
    reg [2:0] counter;
    reg [7:0] inner_buffer;
    reg [7:0] outer_buffer;
    reg changed;
    reg [1:0] state;

    reg [6:0] initial_count;

    wire [7:0] next_buffer;

    assign Buffer = outer_buffer;
    assign Changed = changed;

    assign next_buffer = {inner_buffer[6:0], DI};
    
    always @(posedge CLK or posedge reset) begin
        if(reset) begin
            initial_count = 0;
            state <= 0;
            changed <= 0;
        end else if(state == 0 || state == 1) begin
            initial_count = (DI && CS) ? (initial_count + 1) : 0;
            if(initial_count == 74) begin
                state <= 2;
            end
        end else begin
            if (CS) begin
                state <= 2;
            end else begin
                if(state == 3) begin
                    if (counter == 3'b111) begin
                        changed <= 1;
                    end else if (counter == 3'b100) begin
                        changed <= 0;
                    end
                end else begin
                    if (~DI) begin
                        state <= 3;
                    end
                end
            end
        end
    end 

    always @(posedge CLK) begin
        if (reset == 0 && (state == 2 || state == 3)) begin
            if (CS) begin
                counter <= 1;
                inner_buffer <= 8'b11111111;
                outer_buffer = 8'b11111111;
            end else begin
                inner_buffer <= next_buffer;
                if(state == 3) begin
                    if (counter == 3'b111) begin
                        outer_buffer = next_buffer;
                    end
                    counter <= counter + 1;
                end
            end
        end else begin
            counter <= 1;
            inner_buffer <= 8'b11111111;
            outer_buffer = 8'b11111111;
        end
    end
endmodule
