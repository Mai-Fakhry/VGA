module RGB_Block (
  input  wire clk,
  input video_on,
  input [2:0]sw,
  output reg red,
  output reg green,
  output reg blue
);
   assign red = video_on? sw[2]:1'b0;
   assign green = video_on? sw[1] : 1'b0;
   assign blue = video_on ? sw[0]:1'b0;

endmodule
