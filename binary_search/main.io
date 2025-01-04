#!/usr/bin/env io

BinarySearch := Object clone do(
    search := method(list, target,
        low := 0
        high := list size - 1

        while(low <= high,
            mid := (low + high) / 2
            guess := list at(mid)

            if(guess == target, return mid floor)
            if(guess > target, high = mid - 1,
                low = mid + 1
            )
        )

        return nil
    )
)

b := BinarySearch clone
list := list(1, 3, 5, 7, 9, 11, 13, 15, 17, 19)
target := 7
result := b search(list, target)
if(result != nil,
    writeln("Found ", target, " at index ", result)
,
    writeln(target, " not found in the list")
)