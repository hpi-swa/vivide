tests
test04StableQuery
	"Check whether the current query is still selected for new objects."
	
	sut
		queries: self exampleQueries;
		objects: self exampleObjects;
		currentQuery: sut queries second.
		
	self assert: (sut visibleResults allSatisfy: [:obj | obj isColor]).
	
	sut objects: {Morph new}.
	self assert: sut currentQuery = sut queries second.