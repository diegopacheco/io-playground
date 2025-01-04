#!/usr/bin/env io

Address := Object clone do(
    fields ::= list("name", "street", "city", "state", "zipCode")

    init := method(
        fields foreach(key, 
            if (self hasSlot(key) not,
                self newSlot(key, nil)
            ) 
        )
    )

    emptyFields := method(
        fields select(k, self getSlot(k) == nil)
    )

    isValid := method(errors size == 0)

    assertValid := method(
        if (emptyFields size, 
            Exception raise(
                self type .. " missing: " .. emptyFields join(", ")
            )
        )
    )
)

anAddress := Address clone setName("Alan") setStreet("6502 Mem Ln") println

anAddress assertValid println