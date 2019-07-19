module SpiBuffer(
      input DI,
      input CLK,
      input CS,
      output [7:0] Buffer,
      output Changed
);
   reg [3:0] counter;
   reg [7:0] inner_buffer;
   reg [7:0] outer_buffer;
   reg changed;

   assign Buffer = outer_buffer;
   assign Changed = changed;

   always @(posedge CLK) begin
       if (CS) begin
           counter <= 0;
           outer_buffer <= 8'b11111111;
           changed <= 0;
       end else begin
           if (counter[3]) begin
               outer_buffer <= inner_buffer;
               counter <= 0;
               changed <= 1;
           end else begin
               counter <= counter + 1;
               changed <= changed & ~(counter[2]);
           end
           inner_buffer <= {DI, inner_buffer[7:1]};
       end
   end 
endmodule
