
Defn - Controllability: the capability of forcing any internal node to a given logic state
Defn - Observability: the capability of reading the logic state of any internal node

# Scan Flip Flops

Given a sequential circuit do the following thought experiment
 - A transformation:
    - remove all registers
    - for each Q/Q# add a new input pin
       - can refer to these as 'pseudo inputs'
       - these pins increase controllability
    - for each D add a new output pin
       - can refer to these as 'pseudo outputs'
       - these pins increase observability
 - Advantages:
    - result is combinational -- previously output depended on state+input, but now state is reduced to input
 - Disadvantages:
    - many more pins
    - not the same since registers are gone
    - still not entirely observable
 - This transform emphasizes that for i inputs and r registers the number of test patterns needed for exhaustive testing is 2^(i+r)

[scan flip flops](scan-flip-flops.md)

# Boundary Scan
[boundary scan](boundary-scan.md)
