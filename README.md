# VGA Controller with RGB Color Generator

## Overview

This project implements a VGA Controller with an RGB Color Generator in Verilog HDL. The design generates standard VGA synchronization signals for 640×480 @ 60 Hz resolution and displays selectable colors on a VGA monitor using switch inputs.

The project demonstrates VGA timing generation, synchronization control, active video region handling, and RGB signal generation, making it suitable for FPGA-based digital design applications.

---

## Features

* VGA timing generation for 640×480 @ 60 Hz
* Horizontal and vertical synchronization signal generation
* RGB color output control
* Active video region detection
* Configurable color selection using switches
* FPGA-ready implementation
* Functional simulation and verification through testbench

---

## Project Structure

```text id="3d0g6o"
├── vga_ctrl.v      // VGA timing controller
├── rgb_gen.v       // RGB color generator
├── vga_top.v       // Top-level integration module
└── vga_TB.v        // Testbench for simulation
```

---

## Module Description

### `vga_ctrl.v`

Generates VGA timing signals including:

* `h_sync`
* `v_sync`
* `video_on`
* Horizontal and vertical counters

Supports standard VGA timing:

* Resolution: 640×480
* Refresh Rate: 60 Hz
* Pixel Clock: 25 MHz

---

### `rgb_gen.v`

Generates RGB outputs based on switch inputs:

* Red
* Green
* Blue
* Yellow
* Cyan
* Magenta
* White
* Black

RGB outputs are enabled only during the active display region.

---

### `vga_top.v`

Top-level integration module connecting:

* VGA timing controller
* RGB generator
* VGA output signals

Outputs:

* `h_sync`
* `v_sync`
* `red`
* `green`
* `blue`

---

### `vga_TB.v`

Simulation testbench used to verify:

* VGA synchronization timing
* Active video region behavior
* RGB color generation
* Frame timing operation

---

## VGA Timing Specifications

| Parameter        | Value      |
| ---------------- | ---------- |
| Resolution       | 640 × 480  |
| Refresh Rate     | 60 Hz      |
| Pixel Clock      | 25 MHz     |
| Horizontal Total | 800 pixels |
| Vertical Total   | 525 lines  |

---

## Tools Used

* Verilog HDL
* ModelSim
* Quartus Prime
* FPGA Development Board

---

## Simulation

Compile and run all modules with the provided testbench to verify:

* HSYNC and VSYNC timing
* RGB output behavior
* Visible and blanking region operation

---

## FPGA Implementation

The design can be synthesized and programmed on FPGA boards with VGA support. Switch inputs can be used to change display colors in real time.

---

## Applications

* VGA display systems
* FPGA graphics projects
* Digital design education
* Video timing generation
* Embedded display interfaces

---

## Future Improvements

* Higher VGA resolutions
* Expanded RGB color depth
* Pattern and image generation
* Text rendering support
* Multiple refresh rate support

---

## Author

Mai Fakhry
