tests
test01New

	| q | 
	q := self exampleQueries.
	self assert: sut currentQuery isNil.
	self assert: sut queryChooser visibleQueries isEmpty.
	
	sut queries: q.

	"None filtered."
	self assert: (sut queryChooser visibleQueries hasEqualElements: q).