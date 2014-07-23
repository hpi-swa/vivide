tests
test03NewQuery
	"Create a new query based on the currently selected one."
	
	| q |
	q := self exampleQuery01.
	sut
		currentQuery: q;
		objects: self exampleObjects.
	
	self assert: sut currentQuery == q.
		
	sut addQuery.
	
	self
		deny: sut currentQuery == q;
		"just a copy but changed label"
		assert: sut currentQuery definition = q definition;
		assert: sut currentQuery baseClass = q baseClass.
	self flag: #testMore. "mt:What about other steps in the chain?"