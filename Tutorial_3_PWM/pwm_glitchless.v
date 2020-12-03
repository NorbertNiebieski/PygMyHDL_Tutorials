// File: pwm_glitchless.v
// Generated by MyHDL 0.11
// Date: Thu Dec  3 15:45:46 2020


`timescale 1ns/10ps

module pwm_glitchless (
    clk_i,
    pwm_o,
    threshold
);


input clk_i;
output pwm_o;
wire pwm_o;
input [7:0] threshold;

reg [7:0] cnt;
reg [7:0] threshold_r;



always @(posedge clk_i) begin: PWM_GLITCHLESS_LOC_INSTS_CHUNK_INSTS_0
    cnt <= (cnt + 1);
    if (($signed({1'b0, cnt}) == (227 - 1))) begin
        cnt <= 0;
        threshold_r <= threshold;
    end
end



assign pwm_o = (cnt < threshold_r);

endmodule
