# Conversion between Parallel and Serial data

Circuit
  - A [shift register](shift-register.md) with muxes
  - Example with 3 bits:
     - clock is omitted
     - serial-in is used with o₀,o₁,o₂
     - serial-out is used with i₀,i₁,i₂

```
           i₀             i₁             i₂
           │              │              │
           └│0╲  ┌─────┐  └│╲  ┌─────┐   └│╲  ┌─────┐  
     serial │  │─│D₀ Q₀│─┬─│ │─│D₁ Q₁│─┬──│ │─│D₂ Q₂│─┬─ serial out
        in ─│1╱  │     │ │ │╱  │     │ │  │╱  │     │ │
              │  │> 'Q₀│ │  │  │> 'Q₁│ │   │  │> 'Q₂│ │
              │  └─────┘ o₀ │  └─────┘ o₁  │  └─────┘ o₂
              │             │              │          
      mode ───┴─────────────┴──────────────┘
```

    - Serial-to-parallel
       - need stream to be synchronized with the clock
       - set mode=1
       - every 3rd clock, read tuple (o₀,o₁,o₂)
       - (before a shift, we don't care what's in right-most registers)
    - Parallel-to-Serial
       - set mode=0
       - on first clock
          - tuple (i₀,i₁,i₂) is loaded
          - bit i₂ is output serial-out
       - then set mode=1
       - on next 2 clocks i₁ and then i₀ are output on serial-out
       - (repeat)
       - (after a shift, we don't care what's in left-most registers)

[digraphs](_digraph.md)
