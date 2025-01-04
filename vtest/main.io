#!/usr/bin/env io

Vector := Sequence clone setItemType("float32") setEncoding("number")

size := 10000
v1 := Vector clone setSize(size) rangeFill
v2 := Vector clone setSize(size) rangeFill

loops := 10000
s := Date secondsToRun(loops repeat(v1 += v2)) 

writeln(size*loops/(s*1000000000), " GFLOPS")