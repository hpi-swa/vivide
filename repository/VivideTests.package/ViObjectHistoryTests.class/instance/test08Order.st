tests
test08Order

	sut addObject: String.
	sut addObject: Character.
	self assert: {String. Character} equals: sut objects asArray.