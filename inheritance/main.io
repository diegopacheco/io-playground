#!/usr/bin/env io

Contact := Object clone do(
    name ::= ""
    address ::= ""
    city ::= ""
    setName := method(n, name = n)
    setAddress := method(a, address = a)
    setCity := method(c, city = c)
)

BusinessContact := Contact clone do(
	companyName ::= ""
	fullAddress := method(
		list(companyName, "Care of: " .. name, address, city) join("\n")
	)
)

steve := BusinessContact clone do(
	setName("Steve") 
	setCompanyName("Apple Inc.") 
	setAddress("1 Infinite Loop")
	setCity("Cupertino")
)

steve fullAddress println