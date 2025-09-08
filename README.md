
# VGA Controller Project

## 📖 Overview

This project implements a **VGA (Video Graphics Array) controller** that generates the correct synchronization signals and drives RGB outputs to display images on a VGA monitor. The design is based on the **640×480 @ 60 Hz VGA standard**, using a **25.175 MHz pixel clock**.

The system demonstrates how to:

* Generate horizontal (HSYNC) and vertical (VSYNC) sync signals.
* Manage timing regions (visible area, front porch, sync pulse, back porch).
* Output RGB signals during the active video region.
* Verify functionality with a **test bench**.

---

## 🖥️ VGA Signal Breakdown

### Signals

* **RGB (Red, Green, Blue)** → Analog voltages control pixel colors.
* **HSYNC** → Marks the beginning of a new line.
* **VSYNC** → Marks the beginning of a new frame.

### Timing (640×480 @ 60 Hz)

* **Horizontal (per line)**:

  * Visible area → 640 pixels
  * Front porch → 16 pixels
  * Sync pulse → 96 pixels
  * Back porch → 48 pixels
  * **Total = 800 pixels per line**

* **Vertical (per frame)**:

  * Visible area → 480 lines
  * Front porch → 10 lines
  * Sync pulse → 2 lines
  * Back porch → 33 lines
  * **Total = 525 lines per frame**

* **Pixel Clock**: 25.175 MHz

---

## ⚙️ Project Structure

* **`vga_ctrl` (VGA Controller)**

  * Generates HSYNC and VSYNC signals.
  * Maintains horizontal & vertical counters.
  * Indicates active video region (`video_on`).

* **`rgb_block` (RGB Generator)**

  * Determines pixel colors based on inputs (e.g., `SW[2:0]`).
  * Ensures output only during active video region.
  * Displays black background outside active area.

* **`Top_Module` (Top Module)**

  * Connects all components.
  * Outputs: `hsync`, `vsync`, `red`, `green`, `blue`.
  * Can be tested on hardware (switches change screen color in real-time).

* **Test Bench**

  * Verifies RGB outputs during blanking intervals.
  * Checks sync pulse widths, front porch, and back porch timings.
  * (Optional) Self-checking test bench for automation.

---

## 🚀 How to Run

1. **Simulation**

   * Compile `vga_ctrl`, `rgb_block`, and `vga_top`.
   * Run the provided test bench to validate timing and color generation.

2. **Hardware (FPGA Board)**

   * Connect VGA output pins (`hsync`, `vsync`, RGB).
   * Load bitstream.
   * Use switches (`SW[2:0]`) to change display colors.

