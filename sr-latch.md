# SR Latch -- Active High

R = reset
S = set

## Truth Table

```
  R S │ Q Q'
  ────┼──────────
  0 0 │ no change
  0 1 │ 1 0
  1 0 │ 0 1
  1 1 │ (invalid)
```

## Design:
  - 2 nor gates, with feedback
    - see pdf image

## Interface:
```
      ┌─────┐
  R ──│two  │── Q
      │nor  │
  S ──│gates│── Q'
      └─────┘
```

## Pseudocode

```
latch R S =
  letwire
    Q  = nor R Q'
    Q' = nor S Q
  in
    (Q,Q')
```
## Derivatives

It has variants/derivatives:
 - One with [active low](sr-latch-low.md) inputs
 - One with an [enable](sr-latch-enabled.md) pin
 - One with a [simpler/safer interface](d-latch.md).
