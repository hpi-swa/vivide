tests
test01Size

	self assert: 0 equals: sut size.
	sut addObject: String.
	self assert: 1 equals: sut size.
	sut removeObject: String.
	self assert: 0 equals: sut size.