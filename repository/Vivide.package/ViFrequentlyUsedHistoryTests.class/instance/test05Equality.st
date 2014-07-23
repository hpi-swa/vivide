tests
test05Equality

	sut addObject: (String class >> #cr) methodReference.
	sut addObject: (String class >> #cr) methodReference.
	self assert: 1 equals: sut size.
	self assert: sut size equals: sut frequencies size.
	
	sut limit: 1.
	sut addObject: Character.
	self assert: sut size equals: sut frequencies size.