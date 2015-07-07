tests
test09AddRemoveUndefiniedObject

	sut addObject: nil.
	self assert: 1 equals: sut size.
	sut removeObject: nil.
	self assert: 0 equals: sut size.  