= Design For Test

concept: modify a design to support testing

== Eg 1: 50 MHz oscillator -> counter -> 7-segment LED display

Instead of wiring the oscillator to the counter interpose a series of 2 nand gates
 - the first input the each ...
    - has a point we can ground during testing (name them A and B respectively, from osc to counter)
    - has a pull-up resistor connecting this point to VCC
 - the second input is the output of the previous widget

In normal operation, the points A and B are unconnected, the pull-up to VCC makes the nand pass the oscillator signals through

In testing
 - A is grounded, effectively disconnecting the 50 MHz osc
 - B is connected to a 1 Hz osc (or a button) which instead drives the counter


== Eg 2: 2-bit Binary Counter

Suppose the original design has reset and clear set to VCC on a common wire
 - 2 pins on each of 2 register -- all 4 share

Instead:
 - separate the signals
 - add a point we can ground
 - insert a pull-up resister to each (4 total)

== Eg 3: Cascaded Decade Counter

Suppose we've a chain of n-many 54HC160 counters feeding 7-segment displays and we need to test that each display cycles through all digits.

Normally the RCO of one chip is wired directly to the ENT of the next

Instead, insert a mux beween
 - input 0 is connected to VCC via a pull-up resistor
 - input 1 is connected to the RCO output
 - output is connected to ENT on next counter
 - SELECT is set to 
    - 1 for normal operations
    - 0 for testing

In testing mode, all counters increment in unision, allowing the test to be done in 10 clock pulses

