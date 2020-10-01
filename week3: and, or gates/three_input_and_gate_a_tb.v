module three_input_and_gate_a_tb;

reg aa;
reg bb;
reg cc;
wire dd;

three_input_and_gate_a u_three_input_and_gate_a(
.a (aa),
.b (bb),
.c (cc),
.d (dd)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;

always aa = #400 ~aa;
always bb = #200 ~bb;
always cc = #100 ~cc;

initial begin
            #800
            $finish;
end

endmodule
