
Here's the typical design of a synchronous circuit
```
             l    ┌─────────────┐    k
  inputs ────/───>│combinational│────/───> outputs
                  │    logic    │
               ┌─>│             │──┐
               │  └─────────────┘  │ 
               │                   │ 
               │                   │ 
               │     ┌───────┐     │ 
               │  m  │ state │  m  │ 
               └──/──│memory │<─/──┘
                     │ (FFs) │
  clock ─────────────│>      │
                     └───────┘
```


```
design i1 ... il =
  letreg
    r1 = ...
    ...
    rm = ...
  clock
    c
  in
    (o1,...,ok)
```
