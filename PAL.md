# PAL

An [FPGA](_acronyms.md)

The design includes
 - several streams of `and`s feeding to `or`s feeding to a [flip flop](flip-flop.md)

The design is well-suited to
 - [One-hot encodings](one-hot.md)
 - Fully encoded FSMs, since excitation equations gotten by [Karnaugh maps](karnaugh-map.md) are sums-of-products
