tests
test07ChangeLimitLarge

	sut limit: 10.
	10 timesRepeat: [sut addObject: String].
	self assert: 10 equals: sut size.
	sut limit: 1.
	self assert: 1 equals: sut size.