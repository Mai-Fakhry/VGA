`timescale 1ns/1ps

module tb_vga;

  reg clk;
  reg [2:0] sw;
  wire hsync, vsync, red, green, blue;

  Top_Module dut (
    .clk(clk),
    .hsync(hsync),
    .vsync(vsync),
    .sw(sw),
    .red(red),
    .green(green),
    .blue(blue)
  );

  initial clk = 0;
  always #20 clk = ~clk;

  initial begin
    // RED for first third of frame 
    sw = 3'b001;
    #5600000;

    // GREEN for second third of frame 
    sw = 3'b010;
    #5600000;

    // BLUE for last third of frame 
    sw = 3'b100;
    #5600000;

    $stop;
  end

endmodule
