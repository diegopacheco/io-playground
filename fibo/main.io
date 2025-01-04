#!/usr/bin/env io

Fibonacci := Object clone do(
    fib := method(n,
        if(n < 2, return n)
        return fib(n - 1) + fib(n - 2)
    )
)

f := Fibonacci clone
for(i, 0, 10,
    writeln("Fib(", i, ") = ", f fib(i))
)
