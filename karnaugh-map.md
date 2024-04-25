

Example
  We can simplify:
	AB(not C) + ABC + (not A)BC + AC
  Plot:
     A 0  0  1  1
    ╲B 0  1  1  0
    C┌──┬──┬──┬──┐
    0│ ⁰│ ¹│1³│ ²│
     ├──┼──┼──┼──┤
    1│ ⁴│1⁵│1⁷│1⁶│
     └──┴──┴──┴──┘
  Find factors (n-dimensional blocks, with 2ⁿ cells):
     A 0  0  1  1
    ╲B 0  1  1  0
    C┌──┬──┬──┬──┐
    0│  │  │██│  │
     ├──┼──┼██┼──┤
    1│  │  │██│  │
     └──┴──┴──┴──┘
     A 0  0  1  1
    ╲B 0  1  1  0
    C┌──┬──┬──┬──┐
    0│  │  │  │  │
     ├──┼──┼──┼──┤
    1│  │█████│  │
     └──┴──┴──┴──┘
     A 0  0  1  1
    ╲B 0  1  1  0
    C┌──┬──┬──┬──┐
    0│  │  │  │  │
     ├──┼──┼──┼──┤
    1│  │  │█████│
     └──┴──┴──┴──┘
  Solution:
    AB+BC+AC


Keep in mind
 - factors can wrap around bottom-to-top or right-to-left (or both)
 - place small copies of the corresponding decimal numbers in the corner of each box
 - when using [don't care conditions](dont-care.md) in a multi-state design or with output the X's are in the same location
 - in order to avoid mental gymnastics
    - when your design has 2 bits of state, order the rows in a gray code, the same as your Karnaugh map
    - sometimes it's easier to transpose the 2x4 to a 4x2

[Templates](gray-code.md)
