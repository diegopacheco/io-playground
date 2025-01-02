Contact := Object clone
Contact type println
Contact proto type println

Contact name ::= nil
Contact address ::= nil
Contact city ::= nil

holmes := Contact clone setName("Holmes") setAddress("221B Baker St") setCity("London")
holmes println

watson := Contact clone setName("Watson")
watson println

Contact fullAddress := method(list(name, address, city) join("\n"))
holmes fullAddress println
watson fullAddress println