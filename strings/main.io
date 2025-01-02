#!/usr/bin/env io

a := "foo"
b := "bar"
c := a .. b // concatenation
c println
c at(0) println 
c exSlice(2, 10) println