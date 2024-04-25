# DRAM - Dynamic Random Access Memory

The idea behind DRAM is that we can use a grounded capacitor to store 1 bit of data.
If the capacitor is at 0, it stays.
If it is at 1, it stays briefly, but will discharge.
A value of 1 can be loaded by using a MOSFET.
Due to the quick discharge, any capacitor at 1 needs to be reloaded regularly.
(It's unclear how 0 is loaded -- perhaps simply by failing to refresh)

Advantages of DRAM:

 - Greater density than [SRAM](SRAM.md) since
   - SRAM needs 6 MOSFETs per bit (a bit is the equivalent of a [FF](flip-flop.md))
   - DRAM needs 1 MOSFET  per bit
 - Fewer pins, since the address is specified using "time multiplexing"
   - Memory is conceptually a square, with 2ⁿ rows, 2ⁿ columns
   - Address bus has n bits, but addresses have 2n
     1. active row address strobe (RAS) loads the first n bits of the address
     2. active column address strobe (CAS) loads rest

Disadvantages of DRAM:
 - Need to refresh memory
   - memory is not available during refresh, either to read or write
   - must be done before data decays

Each row is refreshed individually
 - choice of
   - burst: all rows done in rapid succession
   - distributed: 1 row at at time, as device memory access permits

Memory Access & Refresh are done via the same interface, with order of commands determining which one is desired
 - RAS# followed by CAS# indicates...
