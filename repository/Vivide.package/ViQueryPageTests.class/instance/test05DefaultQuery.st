tests
test05DefaultQuery

	sut
		queries: self exampleQueries;
		objects: self exampleObjects.
		
	self assert: sut currentQuery = self exampleQuery01.