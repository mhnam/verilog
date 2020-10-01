module three_input_and_gate_b_tb;

reg aa;
reg bb;
reg cc;
wire dd;
wire ee;

three_input_and_gate_b u_three_input_and_gate_b(
.a (aa),
.b (bb),
.c (cc),
.d (dd),
.e (ee));

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