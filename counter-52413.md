# Counter Example -- 5,2,4,13 repeating

transition table(?)
 - rows can go in any order
    - I choose groups of 4 so that Q₁Q₀ use a Gray code, for easy copying to Karnaugh map


```
         present  │ next
         Q₂ Q₁ Q₀ │ Q₂ Q₁ Q₀
       ┌──────────┼─────────┐
   (0) │ 0  0  0  │ x  x  x │
   (1) │ 0  0  1  │ 0  1  1 │ (3)
   (3) │ 0  1  1  │ 1  0  1 │ (5)
   (2) │ 0  1  0  │ 1  0  0 │ (4)
       │          │         │
   (4) │ 1  0  0  │ 0  0  1 │ (1)
   (5) │ 1  0  1  │ 0  1  0 │ (2)
   (7) │ 1  1  1  │ x  x  x │
   (6) │ 1  1  0  │ x  x  x │
       └──────────┴─────────┘
```


 - D₂ = Q₁
   Since:

```
       ╲Q₂ 0  1
     Q₁Q₀┌──┬──┐
     0 0 │x⁰│0⁴│
         ├──┼──┤
     0 1 │0¹│0⁵│
         ├──┼──┤
     1 1 │1³│x⁷│
         ├──┼──┤
     1 0 │1²│x⁶│
         └──┴──┘
```

 - D₁ = (not Q₁)Q₀
   Since:

```
       ╲Q₂ 0  1
     Q₁Q₀┌──┬──┐
     0 0 │x⁰│0⁴│
         ├──┼──┤
     0 1 │1¹│1⁵│
         ├──┼──┤
     1 1 │0³│x⁷│
         ├──┼──┤
     1 0 │0²│x⁶│
         └──┴──┘
```


 - D₀ = (not Q₂)Q₀ + Q₂(not Q₀)
   Since:

```
       ╲Q₂ 0  1
     Q₁Q₀┌──┬──┐
     0 0 │x⁰│1⁴│
         ├──┼──┤
     0 1 │1¹│0⁵│
         ├──┼──┤
     1 1 │1³│x⁷│
         ├──┼──┤
     1 0 │0²│x⁶│
         └──┴──┘
```



TODO: Verify with a timing diagram





template
```
   ╲Q₂ 0  1
 Q₁Q₀┌──┬──┐
 0 0 │ ⁰│ ⁴│
     ├──┼──┤
 0 1 │ ¹│ ⁵│
     ├──┼──┤
 1 1 │ ³│ ⁷│
     ├──┼──┤
 1 0 │ ²│ ⁶│
     └──┴──┘
```


