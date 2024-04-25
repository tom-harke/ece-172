# [Mealy](mealy.md) vs [Moore](moore.md)

## Assumptions in ECE 172

 - inputs arrive in time to satisfy setup & hold timing constraints
 - 1 input generates 1 output
    - generalizing is easy

## Commonalities

 - [Finite state machines](fsm.md)
    - deterministic
 - One state is chosen as initial
    - notation: crooked arrow
 - Transition on inputs, marked on edges
 - Produce output
    - notation: the token on the "denominator"

TODO: do they need to be clocked?

## Differences

                        │ Mealy             │ Moore
────────────────────────┼───────────────────┼────────────────
output is a function of │ state+input       │ state only
output is marked on     │ edges             │ vertices
output registers needed?│ yes               │ no
output happens wrt input│ 1 clock later     │ same clock
output truth table      │ 1 col/input state │ one column

for the same functionality, the number of states of a Mealy is ≤ that for a Moore
