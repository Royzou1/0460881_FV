module top (clk, rst, q, x, y, counter);

input clk,rst;

output reg [3:0]counter;
output reg q;
output reg x;
output reg y;

reg[3:0] counter_shadow;
reg q_shadow;
reg x_shadow;
reg y_shadow;

wire loop_start;
reg loop_started;
always @(posedge clk) begin
  if (~rst) begin
    loop_started <= 0;
  end 
  else begin
    loop_started <= loop_started || loop_start;
  end
end

always @(posedge clk) begin
  if (rst & loop_start & !loop_started) begin
    counter_shadow <= counter;
    q_shadow <= q;
    x_shadow <= x;
    y_shadow <= y;
  end 
  else if (rst & loop_started) begin
    counter_shadow <= counter_shadow;
    q_shadow <= q_shadow;
    x_shadow <= x_shadow;
    y_shadow <= y_shadow;
  end
end

reg q_was_false_on_loop;
always @(posedge clk) begin
  if (~rst) begin
  q_was_false_on_loop <= 0;
  end 
  else begin
    q_was_false_on_loop <=
    q_was_false_on_loop ||
    ((loop_start || loop_started) && ~q);
  end
end


always @ (posedge clk) begin
  if (~rst) begin
    counter <= 6'b0;
    q <= 1'b1;
    x <= 1'b0;
    y <= 1'b0;
  end else begin
    counter <= counter + 1'b1;
    q <= (q && x && counter == 1) || (~q && y);
    x <= q && y;
    y <= ~x;
  end
end

wire loop_closed = loop_started &
counter_shadow == counter &
q_shadow == q & x_shadow == x & y_shadow == y;


liveness: assert property (@(posedge clk) s_eventually(always(q)));
safety: assert property (@(posedge clk) 
                        !(loop_closed && q_was_false_on_loop));

endmodule
