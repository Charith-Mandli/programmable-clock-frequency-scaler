# Programmable Clock Frequency Scaler using Verilog HDL

## Overview

This project implements a **Programmable Clock Frequency Scaler** using **Verilog HDL** and demonstrates the complete FPGA design workflow using **Xilinx Vivado**.

The design allows runtime selection of multiple clock division factors using a programmable divider architecture. The system supports selectable output frequencies corresponding to divide-by-2, divide-by-4, divide-by-8, and divide-by-16 operations through a 2-bit selection input.

The project includes:
- Modular RTL design
- Runtime frequency selection
- Debounced control inputs
- Functional verification using simulation
- FPGA synthesis and implementation flow
- Timing and power analysis

---

## Target FPGA

- Xilinx Artix-7 FPGA
- Device: xc7a35tcpg236-1

---

## What is a Programmable Clock Frequency Scaler?

A Programmable Clock Frequency Scaler is a digital circuit used to reduce the frequency of an input clock signal by a selectable division factor.

Instead of generating multiple independent clocks, the design dynamically changes the division ratio during runtime using selection inputs. This approach improves modularity, scalability, and hardware resource utilization.

---

## Features

- Runtime-selectable clock division
- Supports divide-by-2, divide-by-4, divide-by-8, and divide-by-16
- Single programmable divider architecture
- Modular Verilog implementation
- Debounced selection inputs
- Reset synchronization during selection changes
- Functional waveform verification
- FPGA-compatible RTL design
- Vivado synthesis and implementation flow

---

## Project Structure

```text
Programmable-Clock-Frequency-Scaler/
│
├── design/
│   ├── clock_divider.v
│   ├── clock_selector.v
│   ├── debouncer.v
│   └── top_module.v
│
├── simulation/
│   └── tb_top_module.v
│
├── constraints/
│   └── top_module.xdc
│
├── screenshots/
│   ├── waveforms/
│   ├── synthesis/
│   ├── implementation/
│   └── reports/
│
├── reports/
│   └── Programmable_Clock_Frequency_Scaler_Report.pdf
│
├── docs/
│
├── README.md
└── .gitignore
```

---

## Modules Used

| Module | Function |
|---|---|
| clock_divider | Generates divided clock outputs based on selected division factor |
| clock_selector | Selects runtime clock division mode |
| debouncer | Removes glitches caused by rapid input switching |
| top_module | Integrates all submodules |
| tb_top_module | Performs functional verification and runtime switching validation |

---

## Working Principle

The input clock is provided to a programmable clock divider module. Based on the 2-bit selection input:

| Select | Division Factor |
|---|---|
| 00 | Divide-by-2 |
| 01 | Divide-by-4 |
| 10 | Divide-by-8 |
| 11 | Divide-by-16 |

The divider counter changes its scaling behavior dynamically during runtime. A debouncer module ensures stable selection input transitions and prevents unintended switching behavior.

---

## Verification

The design was verified using:
- Functional simulation
- Runtime selection switching
- Debouncing verification
- Functional waveform analysis

Verification confirmed:
- Correct divide ratios for all selection modes
- Stable runtime switching behavior
- Proper debounced selection handling
- Glitch-free scaled clock generation

---

## FPGA Workflow

The project successfully completed the following Vivado design stages:

- Behavioral Simulation
- Synthesis
- Placement
- Routing
- Device Implementation

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Vivado Simulator
- Artix-7 FPGA Series

---

## Key Learnings

- Clock division techniques in digital design
- Runtime programmable hardware behavior
- Debouncing and synchronization methods
- Modular RTL architecture
- Functional verification using waveforms
- FPGA synthesis and implementation flow
- Timing and power analysis
- Constraint handling in Vivado

---

## Future Scope

- FPGA hardware deployment using switches and LEDs
- Integration with PLL-based clock management
- Support for additional programmable division ratios
- Dynamic frequency monitoring using display interfaces
- SystemVerilog-based verification environment
- Low-power clock management optimization techniques

---

## Results

### 1. Block Diagram

<img width="1536" height="1024" alt="Block Diagram" src="https://github.com/user-attachments/assets/55aaf213-de08-4964-bf41-9f032721848d" />

---

### 2. Debouncing Verification Waveform

<img width="1617" height="896" alt="Out 3" src="https://github.com/user-attachments/assets/c595542b-964b-4301-959a-226456a2944d" />

---

### 3. Divide-by-8 Output Waveform

<img width="1577" height="867" alt="Out 6" src="https://github.com/user-attachments/assets/969236fa-9ace-4dcb-8af3-1ca0c7b82a6b" />

---

### 4. Synthesized and Implemented Design

<img width="1627" height="902" alt="Impl design" src="https://github.com/user-attachments/assets/a7326c57-630d-4089-9bee-caf3b22ad644" />

---

### 5. Utilization, Power, Timing Summaries

<img width="817" height="592" alt="SS summary 1" src="https://github.com/user-attachments/assets/29d987fb-5d17-4911-8193-6eb0d3398b59" />

<img width="817" height="592" alt="SS summary 2" src="https://github.com/user-attachments/assets/d3dc8e1f-02b4-4775-a13a-63c41fa3f5b5" />

---

## Notes

- Debouncing logic was temporarily simplified during simulation to enable faster functional verification and later restored for FPGA-oriented implementation.
- Final physical pin assignments and I/O constraints depend on the FPGA development board used for deployment.

---

## Author

M.V.S.Charith
