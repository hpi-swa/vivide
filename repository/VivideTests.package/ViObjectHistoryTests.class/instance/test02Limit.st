tests
test02Limit

	sut limit: 1.
	sut addObject: String.
	sut addObject: Character.
	self assert: 1 equals: sut size.
	self assert: sut objects first == Character.