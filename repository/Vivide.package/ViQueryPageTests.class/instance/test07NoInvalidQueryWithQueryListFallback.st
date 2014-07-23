tests
test07NoInvalidQueryWithQueryListFallback

	sut
		queries: self exampleQueries;
		currentQuery: self exampleQuery02;
		objects: self exampleObjects.
		
	self assert: (sut visibleResults allSatisfy: [:obj | obj isColor]).
	
	sut objects: #(a b c d e f g).
	self
		assert: sut currentQuery = self exampleQuery01;
		assert: (sut visibleResults hasEqualElements: sut objects).