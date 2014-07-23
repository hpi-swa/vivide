tests
test02Results

	| objs |
	objs := self exampleObjects.
	sut
		objects: objs;
		currentQuery: self exampleQuery01.
		
	self assert: (sut visibleResults hasEqualElements: objs).