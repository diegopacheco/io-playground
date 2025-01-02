assert := method(
	call sender doMessage(call message argAt(0)) ifFalse(
		Exception raise("failed assertion: " .. call message asString)
	)
)

assert(3 == 3) println
assert(1 == 3) // will raise an exception