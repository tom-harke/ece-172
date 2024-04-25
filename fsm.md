# Finite State Machine

He says:
  completely specified by a 5-tuple
     {S,S₀,I,O,T}
      │ │  │ │ └─ state transitions T ⊆ SxS (edges)
      │ │  │ └─── outputs
      │ │  └───── inputs
      │ └──────── initial state
      └────────── set of states

TODO: This is incomplete, as we also need
  - data
     - each edge to be labelled with an input
     - each node/edge to be labelled with an output (depending on type of machine)
  - restrictions
     - all inputs occur at each node
     - no input occurs twice at a node


Steps
 1. design FSM
 2. determine number of registers
    If the number of states is M
    Then the number of registers is
        ⌈log₂ M⌉

## Design
## 
