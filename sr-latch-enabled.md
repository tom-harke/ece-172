# SR Latch -- Active High -- With Enable

## Diagram
      ┌────┐   ┌────┐
 S ───│nand│───│nand│
    ┌─│    │ ┌─│    │─┬─ Q
    │ └────┘  ╲└────┘ │
    │          ╲ ─────┘
LE ─┤           ╱
    │          ╱ ─────┐
    │ ┌────┐  ╱┌────┐ │
    └─│nand│ └─│nand│─┴─ Q'
 S ───│    │───│    │
      └────┘   └────┘

 - LE stands for 'latch enable'

## Analysis

When LE=1 the circuit reduces to

      ┌────┐   ┌────┐
 S ───│not │───│nand│
      │    │ ┌─│    │─┬─ Q
      └────┘  ╲└────┘ │
               ╲ ─────┘
                ╱
               ╱ ─────┐
      ┌────┐  ╱┌────┐ │
      │not │ └─│nand│─┴─ Q'
 S ───│    │───│    │
      └────┘   └────┘

Inverting the inputs of an active-low circuit makes it active-high

## Truth Table

 LE S  R │ Q
 ────────┼──────────
 0  X  X │ no change
 1  0  0 │ no change
 1  0  1 │ 0
 1  1  0 │ 1
 1  1  1 │ invalid

## Design

Built from [active low](sr-latch-low.md) SR latch

Consider
      ┌────┐
 A ───│nand│── Y
 B ───│    │
      └────┘

One way of viewing a nand gate is
  Y = 1  if A=0
  Y = B' if A=1
That is, when A is high, B passes through but inverted

## See Also

A further improvement is the [D latch](d-latch.md).
