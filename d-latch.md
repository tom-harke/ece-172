# D Latch

Built from [SR latch with enable](sr-latch-enabled.md).
 - simplifies input
 - it eliminates the invalid state

AKA transparent latch


## Diagram
```
             ┌────┐   ┌────┐
 D ─┬────────│nand│───│nand│
    │      ┌─│    │ ┌─│    │─┬─ Q
    │      │ └────┘  ╲└────┘ │
    │      │          ╲ ─────┘
    │  LE ─┤           ╱
    │      │          ╱ ─────┐
    │      │ ┌────┐  ╱┌────┐ │
    │ ┌───┐└─│nand│ └─│nand│─┴─ Q'
    └─│not│──│    │───│    │
      └───┘  └────┘   └────┘
```

## Example Timing Diagram

TODO
