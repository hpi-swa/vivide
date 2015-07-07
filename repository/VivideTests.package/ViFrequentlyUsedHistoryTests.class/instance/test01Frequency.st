tests
test01Frequency

	sut addObject: Character.
	sut addObject: String.
	sut addObject: String.
	sut addObject: String.
	
	self assert: 2 equals: sut size.
	self assert: {String. Character} equals: sut objects asArray.
	
	sut addObject: Character.
	self assert: {String. Character} equals: sut objects asArray.
	
	sut addObject: Character.
	self assert: {Character. String} equals: sut objects asArray.