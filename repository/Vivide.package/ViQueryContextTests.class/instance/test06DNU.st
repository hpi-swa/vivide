tests
test06DNU

	self should: [sut color] raise: Error.
	sut contents: Morph new.
	self assert: sut color isColor.