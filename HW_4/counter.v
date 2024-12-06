module counter (
    input  clk,        // clock
    input  rst,        // reset
    input  start_over, // if set, c1 and c2 are reset to 0
    input  en1,        // if not set, don't change c1
    input  en2,        // if not set, don't change c2
    input  direction1, // if set, increment c1; else decrement
    input  direction2, // if set, increment c2; else decrement
    output reg [31:0] c1, // counter c1
    output reg [31:0] c2  // counter c2
);

always @(posedge clk or posedge rst) begin
    if (rst || start_over) begin
        c1 <= 32'd0;
        c2 <= 32'd0;
    end else begin
        if (direction1) c1 <= c1 + (en1 ? 1 : 0);
        else            c1 <= c1 - (en1 ? 1 : 0);
        
        if (direction2) c2 <= c2 + (en2 ? 1 : 0);
        else            c2 <= c2 - (en2 ? 1 : 0);
    end
end

// Verification
// seif_1

property start_over_combined;
    @(posedge clk) start_over |=> (!c1 && !c2);
endproperty
assert property(start_over_combined);

// seif 2

property inc1;
    @(posedge clk) (!start_over && direction1 && en1) |=>
                   ($past(c1) + 1 == c1);
endproperty

property inc2;
    @(posedge clk) (!start_over && direction2 && en2) |=> 
                   ($past(c2) + 1 == c2);
endproperty

assert property(inc1 && inc2);

// seif 3

property sequence1;
    @(posedge clk) (c1 < c2) ##1 (c1 > c2) ##1 (c1 < c2);
endproperty
cover property(sequence1);

endmodule
