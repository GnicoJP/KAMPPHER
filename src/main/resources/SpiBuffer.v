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

   assign Buffer = outer_buffer;
   assign Changed = changed;

   always @(posedge CLK) begin
       if (CS) begin
           counter <= 0;
           inner_buffer = 8'b11111111;
           outer_buffer <= 8'b11111111;
           changed <= 0;
       end else begin
            inner_buffer = {DI, inner_buffer[7:1]};
            if (counter == 3'b111) begin
                changed <= 1;
                outer_buffer <= inner_buffer;
            end else begin
                changed <= changed & ~(counter[2]);
            end
            counter <= counter + 1;
       end
   end 
endmodule
