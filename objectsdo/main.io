Contact := Object clone do(
	name ::= nil
	address ::= nil
	city ::= nil
	fullAddress := method(list(name, address, city) join("\n"))
)

Contact println

Contact setName("John")
Contact setAddress("123 Main St.")
Contact setCity("Springfield")
Contact println