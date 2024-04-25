Acronym of: Joint Test Action Group

Originally for testing, but also useful for programming/configuration of [FPGAs](FPGA.md)

There is a 4-pin interface
 | TDI | in  | Test Data In     |
 | TDO | out | Test Data Out    |
 | TMS | in  | Test Mode Select |
 | TCK | in  | Test Clock       |

There is a TAP controller inside any JTAG-compatible chip.
 - It is a 16-state Moore machine
 - There are 2 instances of the same 7-state sub machine
    - one for Data, one for Instruction

TODO: what is TAP?
