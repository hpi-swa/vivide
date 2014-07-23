tests
test02FrequencyLimit

	sut limit: 2.
	sut addObject: String.
	sut addObject: String.
	sut addObject: Character.
	sut addObject: Character.
	
	sut addObject: Morph.
	self assert: {Character. Morph} equals: sut objects asArray.