module fpga_top (
    input  logic       BCLK,  // board clock (100MHz or 5MHz, haven't decided)
    input  logic       BTNC,   // center pushbutton reset (active-high)
    output logic [7:0] led
);

    // clk divider (1/16,777,216 for 24th bit)
    // about 17 Mhz -> 1 Hz
    // idc if Vivado says it's unconstrained
    logic [26:0] div_q;
    always_ff @(posedge BCLK)
        div_q <= div_q + 27'd1;

    // global clock buffer
    logic cpu_clk;
    BUFG  u_cpu_clk_buf (.I(div_q[24]), .O(cpu_clk));

    // button is active high, riscv reset is active low
    logic  reset_n;
    assign reset_n = ~BTNC;

    // instantiate top module
    riscv_top u_riscv_top (
        .clk     (cpu_clk),
        .reset_n (reset_n),
        .led     (led)
    );

endmodule