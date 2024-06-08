## SR Latch -- Active Low

Comparison to the [active high](sr-latch.md) SR latch
 - R and S are swapped
 - nand-based latch use active low input (nor-based was active high)
    - invalid case & no-change have changed position
 - can get from one to the other by "pushing" the "º"s through the circuit
 - this is a better basis for SR latch [with enable](sr-latch-enabled.md) than [active high](sr-latch.md) one

Design
```
      ┌─────┐
  S ──│two  │── Q
      │nand │
  R ──│gates│── Q'
      └─────┘
```

```
        ┌────┐
  S ────│nand│
      ┌─│    │─┬─ Q
       ╲└────┘ │
        ╲ ─────┘
         ╱
        ╱ ─────┐
       ╱┌────┐ │
      └─│nand│─┴─ Q'
  R ────│    │
        └────┘
```

Truth Table

```
  S R │ Q Q'
  ────┼──────────
  0 0 │ (invalid)
  0 1 │ 1 0
  1 0 │ 0 1
  1 1 │ no change
```


## Pseudocode

```
latch R S =
  letwire
    Q  = nand S Q'
    Q' = nand S Q
  in
    (Q,Q')
```
