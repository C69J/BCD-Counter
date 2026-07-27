# BCD-Counter
Verilog HDL implementation of a synchronous Binary-Coded Decimal (BCD) counter with simulation, testbench, and waveform verification for digital design and FPGA applications.

A synchronous Binary-Coded Decimal (BCD) counter implemented in Verilog HDL. The counter counts from 0 to 9 and automatically resets to 0 after reaching 9. The project includes a testbench for functional verification through simulation.

## Features
- Synchronous BCD counter
- Verilog HDL implementation
- Modular and easy-to-understand design
- Testbench for functional verification
- Suitable for FPGA and digital design learning

## Project Structure
```
BCD-Counter/
├── bcd_counter.v          # Verilog source
├── bcd_counter_tb.v       # Testbench
├── waveform.png           # Simulation waveform (optional)
└── README.md
```

## Tools Used
- Verilog HDL
- Xilinx Vivado (or your simulator)

## Simulation
The counter produces the following sequence:

```
0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 0 → ...
```

## Future Improvements
- Parameterizable counter width
- Asynchronous reset option
- FPGA implementation and hardware verification

## Author
CHAITANYA
