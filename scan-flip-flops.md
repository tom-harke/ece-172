A design with scan registers requires

 - adding 3 new pins to the circuit
    - scan enable   (SE)
    - scan data in  (SDI)
    - scan data out (SDO)
 - replacing each D flip flop with a mux/ff pairing

```
              scan
             enable
               |
               v
     scan in  |\
     -------->| |
              | |   -----
     data     | |->|     |      data
     -------->| |  |    Q|----------
              |/   |     |  scan out
                   |>    |
                   |     |
                    -----
```

 - note:
    - each register now has a SE, SDI, SDO
    - SDO is a synonym for Q
 - threading
    - pin scan in to scan in of first register
    - scan out of all but the last register to scan in of the next
    - scan out of the last register to the scan out pin

To test one clock of a circuit using scan registers:
 - have a test pattern
    - inputs
    - an r bit vector for previous state (where r is the number of registers)
    - an r bit vector for next     state
    - outputs
 - do
    - set SE
    - pulse the clock r times
       - shift in previous state
    - unset SE
    - pulse the clock once
    - set SE
    - pulse the clock r times
       - shift out next state
 - an optimization:
    - concurrently
       - shift out n-th "next state"
       - shift in (n+1)-st "previous state"

 -

```
      ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐
    ──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└ CLK
          scan in             scan out
      ┌───────────────┐   ┌───────────────┐
    ──┘   ┆   ┆   ┆   └───┘   ┆   ┆   ┆   └─ SE
```
