# Ring Counter

Circuit
  - A [shift register](shift-register.md) with a loop back

```
          ┌─────────────────────────────────┐
          │ ┌─────┐     ┌─────┐     ┌─────┐ │
     data └─│D₀ Q₀│─────│D₁ Q₁│─...─│D  Q │─┘
            │     │     │     │     │     │
          ┌─│> 'Q₀│   ┌─│> 'Q₁│   ┌─│> 'Q │
          │ └─────┘   │ └─────┘   │ └─────┘
     clk ─┴───────────┴─────────..┘
```

Initialization
 - pick i
 - Qi = 1
 - Qj = 0 for j != i

Application: memory bus access arbitration circuit
 - setup
    - many cpus (each modeled with a corresponding register)
    - single share memory
 - cpu whose register is 1 gets access
 - properties
    - fairness: every CPU gets some time
    - equity:   every CPU gets the same amount of time
    - (these seem somewhat bogus: doesn't equity imply fairness?)

See also
 - [twisted ring counter](twisted-ring-counter.md)
