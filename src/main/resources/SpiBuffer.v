module SpiBuffer(
      input DI,
      input CLK,
      input CS,
      output [7:0] Buffer,
      output Changed
);
   reg [2:0] counter;
   reg [7:0] inner_buffer;
   reg [7:0] outer_buffer;
   reg changed;
   reg state;

   wire [7:0] next_buffer;

   assign Buffer = outer_buffer;
   assign Changed = changed;

   assign next_buffer = {inner_buffer[6:0], DI};

   always @(posedge CLK) begin
       if (CS) begin
           counter <= 1;
           inner_buffer <= 8'b11111111;
           outer_buffer <= 8'b11111111;
           changed <= 0;
           state <= 0;
       end else begin
            inner_buffer <= next_buffer;
            if(state) begin
                if (counter == 3'b111) begin
                    changed <= 1;
                    outer_buffer = next_buffer;
                end
                else if (counter == 3'b100) begin
                    changed <= 0;
                end
                counter <= counter + 1;
            end else begin
                if (~DI) begin
                    state <= 1;
                end
            end
       end
   end 
endmodule
