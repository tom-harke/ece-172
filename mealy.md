cf [mealy-vs-moore](mealy-vs-moore.md)

## Key Points

 - output must be registered

## Design Example

Consider
  present │ next │ output
   state  │ 0  1 │ 0  1
  ────────┼──────┼────────
    A     │ A  B │ 0  0
    B     │ C  C │ 1  0
    C     │ A  B │ 0  1

This differs from a [moore](moore.md) FSM in that there is more than 1 output column.
There is one output column for each input value (here inputs of {0,1})

Requires ⌈log₂ 3⌉ = 2 flip flops

Suppose we choose encoding
  A = 11
  B = 10
  C = 00

   present │    next    │ output
    state  │   0     1  │ 0  1
      Q₁ Q₀│ D₁ D₀ D₁ D₀│
  ─────────┼────────────┼────────
  (A) 1  1 │ 1  1  1  0 │ 0  0
  (B) 1  0 │ 0  0  0  0 │ 1  0
  (C) 0  0 │ 1  1  1  0 │ 0  1
      0  1 │ X  X  X  X │ X  X


  D₁:
         ╲N 0  1
      Q₁Q₀┌──┬──┐
      1 1 │1⁷│1³│
          ├──┼──┤
      1 0 │0⁶│0²│
          ├──┼──┤
      0 0 │1⁴│1⁰│
          ├──┼──┤
      0 1 │X⁵│X¹│
          └──┴──┘
      D₁ = Q₁' + Q₀


  D₀:

         ╲N 0  1
      Q₁Q₀┌──┬──┐
      1 1 │1⁷│0³│
          ├──┼──┤
      1 0 │0⁶│0²│
          ├──┼──┤
      0 0 │1⁴│0⁰│
          ├──┼──┤
      0 1 │X⁵│X¹│
          └──┴──┘
      D₀ = N'Q₁' + N'Q₀
         = N'(Q₁'+ Q₀)

  Output: TODO

         ╲N 0  1
      Q₁Q₀┌──┬──┐
      1 1 │0⁷│0³│
          ├──┼──┤
      1 0 │1⁶│0²│
          ├──┼──┤
      0 0 │0⁴│1⁰│
          ├──┼──┤
      0 1 │X⁵│X¹│
          └──┴──┘
      Output = NQ₁' + N'Q₁Q₀'

TODO: timing diagram with clock & mis-aligned output -- not synchronous

   CLK       ____^____^____^____^ ____^_
   IN        _______^^^^^^^^^^_______
   Q₀        ___________________^^^^^
   Q₁        ^^^^_____^^^^^_____^^^^^_____
   OUT(unr)  ^^^^__^^^_____^^_______
   OUT(reg)  XXX^^^^^^^^^^^^^_______

TODO: mention the need to register all outputs
TODO: note output is delayed by 1 cycle (compared to Moore)
TODO: note increase in number of needed registers
