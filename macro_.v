// =======================
// Dummy Macro Definition
// =======================
module simple_macro (
    input  wire clk,
    input  wire [7:0] din,
    output reg  [7:0] dout
);
   // always @(posedge clk) begin
  //      dout <= din;  // simple register behavior
   // end
endmodule


// =======================
// Top Module
// =======================
module top_macro_design (
    input  wire clk,
    input  wire [7:0] in0,
    input  wire [7:0] in1,
    input  wire [7:0] in2,
    input  wire [7:0] in3,
    output wire [7:0] out0,
    output wire [7:0] out1,
    output wire [7:0] out2,
    output wire [7:0] out3
);

    // Multiple instances of SAME macro
    simple_macro u_macro0 (.clk(clk), .din(in0), .dout(out0));
    simple_macro u_macro1 (.clk(clk), .din(in1), .dout(out1));
    simple_macro u_macro2 (.clk(clk), .din(in2), .dout(out2));
    simple_macro u_macro3 (.clk(clk), .din(in3), .dout(out3));

endmodule
