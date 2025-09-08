module Top_Module (
  input  wire clk,
  input wire [2:0]sw,
  output wire  hsync, 
  output wire  vsync,
  output wire red,
  output wire green,
  output wire blue
);
wire  video_on;

VGA_Controller vg(
.clk(clk),
.hsync(hsync),
.vsync(vsync),
.video_on(video_on)
);

RGB_Block rgb(
.clk(clk),
.video_on(video_on),
.sw(sw),
.red(red),
.green(green),
.blue(blue)
);

endmodule
