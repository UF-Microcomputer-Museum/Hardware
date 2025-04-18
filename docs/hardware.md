# Hardware Required

## Semester 1

As of semester 1 we are using the **DE-10 Lite** as our FPGA of choice. This will allow us to test a primitive barebones implementation of an NES. 

Our biggest drawback in using this FPGA is that it requires **Quartus Prime** in order to generate the proprietary bitstream format (**.sof** and **.pof**), Intel-specific place and route tools, and the Intel USB Blaster programmer, which only Quartus supports reliably. This is an issue since the goal of our project is to be entirely open source.

The following table shows a comparison between what the MiSTer project uses (DE10-Nano) and a cheaper FPGA we have on hand (DE10-Lite).

# DE10-Lite vs DE10-Nano Comparison Table

| Feature                  | DE10-Lite                            | DE10-Nano                            |
|--------------------------|--------------------------------------|--------------------------------------|
| **FPGA Chip**            | Intel MAX 10 (10M50DAF484C7G)        | Intel Cyclone V SoC (5CSEBA6U23I7)   |
| **Logic Elements (LEs)** | ~50K                                 | ~110K                                |
| **Onboard RAM**          | 378 KB (M9K blocks)                  | 1 GB DDR3 (for ARM), 64 MB SDRAM (FPGA) |
| **Processor**            | None                                 | Dual-core ARM Cortex-A9              |
| **ADC / Analog**         | Yes (ADC + temp sensor)              | No                                   |
| **I/O Headers**          | 40 GPIO pins                         | 40 GPIO + Arduino Header             |
| **Storage**              | None                                 | microSD slot                         |
| **Video Output**         | VGA (with DAC R-2R circuit)          | HDMI                                 |
| **USB Support**          | USB-Blaster (via mini-USB)           | USB OTG, USB Blaster (via micro-USB) |
| **Networking**           | No                                   | Gigabit Ethernet                     |
| **Power Source**         | USB only                             | USB or 5V barrel jack                |
| **Cost (Approx.)**       | ~$70                                 | ~$130                                |