module VGA_Controller (
  input  wire clk,
  output reg  hsync, 
  output reg  vsync,
  output reg  video_on
);
  reg [9:0] vertical_counter = 0;   // 0–524
  reg [9:0] horizontal_counter = 0; // 0–799

  always @(posedge clk) begin
    // Horizontal counter
    if (horizontal_counter == 799) begin
      horizontal_counter <= 0;
      // Vertical counter
      if (vertical_counter == 524)
        vertical_counter <= 0;
      else
        vertical_counter <= vertical_counter + 1;
    end else begin
      horizontal_counter <= horizontal_counter + 1;
    end

    // Active video region
    video_on <= (horizontal_counter < 640) && (vertical_counter < 480);

    // HSYNC: active low during [656, 751]
    hsync <= ~((horizontal_counter >= 656) && (horizontal_counter < 752));

    // VSYNC: active low during [490, 491]
    vsync <= ~((vertical_counter >= 490) && (vertical_counter < 492));
  end
endmodule
