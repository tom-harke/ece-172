How To Analyze Counters

Example

Consider the 2 bit counter
```
		LSB               MSB
      ┌─────┐           ┌─────┐
  ┌───│D₀ Q₀│─── xor ───│D₁ Q₁│─┐
  │   │     │     │     │     │ │
  │   │>  Q₀│─┐   │     │>  Q₁│ │
  │   └─────┘ │   │     └─────┘ │
  └───────────┘   └─────────────┘
```

  where
   - some edges are omitted for clarity
      - outputs
      - both CLK inputs are connected to the same clock

  The resulting [excitation equations](_todo.md) are
	D₀ = not Q₀
	D₁ = xor Q₀ Q₁

  For sake of determining functionality, ignore delays
  Start by assuming a concrete state, eg Q₀=0, Q₁=0

  CLK 
