tests
test08Order

	sut addObject: String.
	sut addObject: Character.
	self assert: {Character. String} equals: sut objects asArray.