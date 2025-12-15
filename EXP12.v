module EXP12 (
    input  wire clk,      // external clock
    input  wire rst,      // asynchronous reset
    output reg  [2:0] q   // counter output
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        q[0] <= 1'b0;
    else
        q[0] <= ~q[0];     // LSB toggles on every clock
end

always @(posedge q[0] or posedge rst)
begin
    if (rst)
        q[1] <= 1'b0;
    else
        q[1] <= ~q[1];     // toggles on q[0]
end

always @(posedge q[1] or posedge rst)
begin
    if (rst)
        q[2] <= 1'b0;
    else
        q[2] <= ~q[2];     // toggles on q[1]
end

endmodule