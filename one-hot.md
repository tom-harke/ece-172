# One-Hot Encoding

Summary:
 - Design process is trivial
 - Uses more flip-flops (M for one-hot vs ⌈log₂ M⌉ for standard encodings)
 - Trade-off
    - [+] design process is trivial
    - [-] uses a lot of FFs

## Design

 - Use one FF per state
 - Maintain the invariant that exactly one FF is high/1 at any moment.
   All others are low/0

## Example

Consider the Moore FSM:

    │ 0 1 │
  ──┼─────┼───
  A │ K A │ 1
  C │ A K │ 0
  K │ A C │ 1  <- initial

For each state, look at the inward transitions

  - A:
      A -1-> A -- translates to `and A N`
      C -0-> A -- translates to `and C (not N)`
      K -0-> A -- translates to `and K (not N)`
  - C:
      K -1-> C -- translates to `and K N`
  - K:
      A -0-> K
      C -1-> K

```
letreg
  A = or [and [A,N], and [C,N'], and [K,N']]
  C =     and [K,N]
  K = or [and [A,N], and [C,N']]
clock
  CLK
in
  or [A,K]
```

## In General
(
Assign registers
 - one for each state
 - for a given state S,
    - create a binary 'and' for each transition P -?-> S
      - for P -1-> S create `and P N`
      - for P -0-> S create `and P (not N)`
    - create an `or` for state S
      - each `and` claus from the previous step is an input
      - the output feeds into the FF
)
