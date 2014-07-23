tests
test06NoInvalidQuery

	sut
		currentQuery: self exampleQuery02;
		objects: self exampleObjects.
		
	self assert: (sut visibleResults allSatisfy: [:obj | obj isColor]).
	
	sut objects: #(a b c d e f g).
	self
		assert: sut currentQuery isNil;
		assert: (sut visibleResults hasEqualElements: sut objects).