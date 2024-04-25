# Tri State Buffer

There are 3 states
 - 0 (or L) -- low
 - 1 (or H) -- high
 - Z        -- high impedence

Symbol:
```
  A ─▷─ Y
     │
     C
```

Truth Table

```
  C A │ Y
  ────┼──
  0 0 │ Z ⌉ Y = Z
  0 1 │ Z ⌋ effectively disconnected
  1 0 │ 0 ⌉ Y = A
  1 1 │ 1 ⌋ effectively an ordinary [buffer](buffer.md)
```


Applications
  - these are a part of every memory chip (later in course)
  - have a configurable I/O port, eg in the [PAL 16 L 8](PAL.md)

[Digraph](_digraph.md)
