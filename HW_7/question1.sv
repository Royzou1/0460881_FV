

module hw7 (
    input clk,
    input rst,
    input en,
    input ok
);

assume property (@(posedge clk) en |=> s_eventually(ok));
assert property (@(posedge clk) en |=> (1'b1 s_until ok));


