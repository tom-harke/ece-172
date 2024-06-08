# Twisted Ring Counter

Circuit
  - A [shift register](shift-register.md) with a loop back

```
          ┌─────────────────────────────────┐
          │ ┌─────┐     ┌─────┐     ┌─────┐ │
     data └─│D₀ Q₀│─────│D₁ Q₁│─...─│D  Q │ │
            │     │     │     │     │     │ │
          ┌─│> 'Q₀│   ┌─│> 'Q₁│   ┌─│> 'Q │─┘
          │ └─────┘   │ └─────┘   │ └─────┘
     clk ─┴───────────┴─────────..┘
```

Initialization
 - no explicit initialization
    - Qi = 0 for all i

```
      ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  ┌┐  
CLK   ││  ││  ││  ││  ││  ││  ││  ││  ││  ││  ││  ││  ││  ││  ││  ││  
    ──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└──┘└
      ┌───────────┐ 
Q₀  0 │   ┆   ┆   │ 
    ──┘   ┆   ┆   └─
          ┌───────────┐ 
Q₁  0     │   ┆       │ 
    ──────┘   ┆       └─
          ┆   ┌───────────┐ 
Q₁  0     ┆   │           │ 
    ──────────┘           └─
```

Properties:
 - 50% duty cycle
 - each output has the same waveform
    - but shifted

Application: memory bus access arbitration circuit
 - "multiphase clock circuit" (beyond the scope of this course?)

