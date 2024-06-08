# Implication Tables

TODO: find interesting exercises for implication tables:
TODO:   - deduplication of whole substructures
TODO:   - rolling up a loop to a tighter loop
TODO:   - same example, slightly different outputs; one rolls up tight, the other stays the same

karnaugh-map.md

## Example
```
      │ next│out
      │ 0 1 │
    ──┼─────┼───
    A │ B E │ 1
    B │ C D │ 1
    C │ A F │ 0
    D │ F A │ 0
    E │ B C │ 1
    F │ A F │ 0
```

Initialize table
 - use only bottom-left half of table
    - omit top-right, as it's a mirror image
    - omit diagonal, as any state is equivalent to itself
 - use a pair of next/out data from truth table
    - one from row label
    - one from column label


```
    A │ ╲
      │  ╲
      ├───┐
    B │BE1│ ╲
      │CD1│  ╲
      ├───┼───┐
    C │BE1│CD1│ ╲
      │AF0│AF0│  ╲
      ├───┼───┼───┐
    D │BE1│CD1│AF0│ ╲
      │FA0│FA0│FA0│  ╲
      ├───┼───┼───┼───┐
    E │BE1│CD1│AF0│FA0│ ╲
      │BC1│BC1│BC1│BC1│  ╲
      ├───┼───┼───┼───┼───┐
    F │BE1│CD1│AF0│FA0│BC1│ ╲
      │AF0│AF0│AF0│AF0│AF0│  ╲
      └───┴───┴───┴───┴───┴───
        A   B   C   C   E   F
```

Cross out any cell in which the outputs differ

```
    A │ ╲
      │  ╲
      ├───┐
    B │BE1│ ╲
      │CD1│  ╲
      ├───┼───┐
    C │███│███│ ╲
      │███│███│  ╲
      ├───┼───┼───┐
    D │███│███│AF0│ ╲
      │███│███│FA0│  ╲
      ├───┼───┼───┼───┐
    E │BE1│CD1│███│███│ ╲
      │BC1│BC1│███│███│  ╲
      ├───┼───┼───┼───┼───┐
    F │███│███│AF0│FA0│███│ ╲
      │███│███│AF0│AF0│███│  ╲
      └───┴───┴───┴───┴───┴───
        A   B   C   C   E   F
```

After this outputs aren't used.
Also note that the A row and F column aren't used.

```
      ┌───┐
    B │BE │
      │CD │
      ├───┼───┐
    C │███│███│
      │███│███│
      ├───┼───┼───┐
    D │███│███│AF │
      │███│███│FA │
      ├───┼───┼───┼───┐
    E │BE │CD │███│███│
      │BC │BC │███│███│
      ├───┼───┼───┼───┼───┐
    F │███│███│AF │FA │███│
      │███│███│AF │AF │███│
      └───┴───┴───┴───┴───┘
        A   B   C   D   E
```

Repeat until no changes occur:
 - for each cell that is not crossed out
 - examine both vertical pairs of next states
    - for example, with cell
```
      ┌──┐
      │BE│
      │CD│
      └──┘
```
      the vertical pairs are {B,C} and {E,D}
 - if either of them corresponds to a cell that has been crossed out, then cross this cell out too
    - eg examining
```
      ┌──┐
      │BE│
      │CD│
      └──┘
```
      we see BC, but the cell at (row C,column B) was previously crossed out,
      so cross this one out as well

So, for this example

```
      ┌───┐
    B │███│
      │███│
      ├───┼───┐
    C │███│███│
      │███│███│
      ├───┼───┼───┐
    D │███│███│███│
      │███│███│███│
      ├───┼───┼───┼───┐
    E │███│███│███│███│
      │███│███│███│███│
      ├───┼───┼───┼───┼───┐
    F │███│███│AF │███│███│
      │███│███│AF │███│███│
      └───┴───┴───┴───┴───┘
        A   B   C   D   E
```

The cell (C,F) remains, so the two are equivalent.

Warning: this is a bad example in the sense that we only had to scan the table once to cross out all inequivalent states


Pick one of {C,F} to elimate from the table
 - I chose to eliminate F so
    - delete the F row
    - substitute all remaining occurrences of F with C

```
      │ next│out
      │ 0 1 │
    ──┼─────┼───
    A │ B E │ 1
    B │ C D │ 1
    C │ A C │ 0
    D │ C A │ 0
    E │ B C │ 1
```

## Etc

The example above was for a Moore machine.
Mealy is similar, but with multiple output columns in each cell.
