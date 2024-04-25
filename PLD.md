# Programmable Logic Devices

eg
 - PAL 16 L 8 AM
 - GAL 22 V 10
 - FPGA

## Commonalities of PAL and GAL

Both PAL and GAL have design of an (array of) output/register fed by an OR, fed by an array of ANDs.

## PAL

PAL has 6 registers (bits of state) and 2 combinational outputs (bits of output).
This limits designs to max 2⁶ states and max 2² combinational outputs.

## GAL
GAL (generic array logic) uses a more generic output called an OLMC (output logic macro cell) which can be configured in 3 dimensions.
 1. output can be set into 1 of 2 modes:
    1. registered
    2. combinational logic
 2. output can active high or active low
 3. internal feedback can be controlled by the tri-state buffer (for I/O) or unconditionally fed back

Odd: set is synchronous, while reset is asynchronous

## FPGA

...

_digraph.md
