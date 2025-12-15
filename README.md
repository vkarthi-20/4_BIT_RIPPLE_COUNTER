# 4_BIT_RIPPLE_COUNTER

AIM:

To implement 4 Bit Ripple Counter using verilog and validating their functionality using their functional tables

SOFTWARE REQUIRED:

Quartus prime

THEORY

4 Bit Ripple Counter

A binary ripple counter consists of a series connection of complementing flip-flops (T or JK type), with the output of each flip-flop connected to the Clock Pulse input of the next higher-order flip-flop. The flip-flop holding the least significant bit receives the incoming count pulses. The diagram of a 4-bit binary ripple counter is shown in Fig. below.
<img width="609" height="397" alt="image" src="https://github.com/user-attachments/assets/d963509b-563b-4f3f-a0c7-7a316a5bb5e4" />


In timing diagram Q0 is changing as soon as the negative edge of clock pulse is encountered, Q1 is changing when negative edge of Q0 is encountered(because Q0 is like clock pulse for second flip flop) and so on.

<img width="456" height="665" alt="image" src="https://github.com/user-attachments/assets/211a27ec-46f2-4183-907e-cfaa819a4d76" />

PROGRAM:
```

module Bit_ripple_counter (
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
```


Developed by: Karthi V

RegisterNumber: 25017522

RTL LOGIC FOR 4 Bit Ripple Counter: 
[RTL Viewer.pdf](https://github.com/user-attachments/files/24172345/RTL.Viewer.pdf)


TIMING DIAGRAMS FOR 4 Bit Ripple Counter:
[wave1.pdf](https://github.com/user-attachments/files/24172349/wave1.pdf)


RESULTS:

We got the expected output

