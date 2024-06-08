# Multiplexer

aka 'mux'

The inverse is a [Decoder (demultiplexer)](decoder.md)
    
Eg 2x1 mux
```
  Symbol
       │╲
    A ─│0│
       │ │─ Y
    B ─│1│
       │╱
        │
        S
```

  Equations
     Y=A when S=0
     Y=B when S=1

Eg 4x1 mux
  Symbol

```
       │╲
       │ ╲
    A ─│  │
       │  │
    B ─│  │
       │  │─ Y
    C ─│  │
       │  │
    D ─│  │
       │ ╱
       │╱
        ││
        SS
        12
```

In general, a 2ⁿ mux has n select pins


[index](_index.md)
[digraphs](_digraph.md)
