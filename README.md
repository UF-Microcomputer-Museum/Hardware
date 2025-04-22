# UF Microcomputer Museum

## Description

The goal of this project is to replicate the functionality of Nintendo's Famicom/NES system on an FPGA using solely open source tools and methods. Our secondary goal is to then create a system that educates the user on how computers or, more specifically, how the Famicom/NES system works. This repository holds all the requisite code in order for our hardware to run, we may make a seperate repository if we decide to create seperate software (possibly an IDE to make NES ROMs) to accompany our hardware.

## Features

* Runs on the Terasic DE-10 Lite
* A 6502 core (courtesy of NES_MiSTer repo)
* Video Output (VGA)
* PPU Implementation
* GitHub Documentation Website

## Bugs

* Does not support controllers.
* Does not go past menu since controller is not implemented yet.
* ROMs need to be manually loaded into memory through the ``.mif`` files.
* Requires the proprietary software **Quartus Prime Lite Edition**.
* Does not have working audio as an Audio Processing Unit (APU) has not been implemented.

## Installation

1. Install **Quartus Prime Lite Edition**
2. Install **MAX 10 FPGA Device Support**, the **MAX II, Intel MAX V Device Support**, and the **Cyclone V Device Support**
3. Clone Repository

```bash
git clone https://github.com/UF-Microcomputer-Museum/Hardware
cd Hardware
```

3. Open the ``NES.qpf`` file.
4. Run a **Full Compilation**
5. Connect the **Terasic DE-10 Lite** to your computer via USB.
6. On Quartus, select “Tools” and “Programmer”.
7. Make sure the mode is set to "JTAG".
8. Check the Program/Configure checkbox.
9. Press Start.

## Hardware Requirements 
At this stage of the project we will be making use of the **Terasic DE-10 Lite** until we find a better alternative.

## Sofware Requirements
As of now we will be testing our HDL code on a **Terasic DE-10 Lite** which requires **Quartus Prime Lite Edition**.

## For More Detailed Documentation Click the Link Below
https://uf-microcomputer-museum.github.io/Hardware/
