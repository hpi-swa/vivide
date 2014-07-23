tests
test16GroupWithNoObjects

	| p1 q1 q2 q3 tmp |
	p1 := ViQueryStep property: '[:number | number asString]'.
	q1 := ViQueryStep collect: '[:number | number odd ifTrue: [1 to: number] ifFalse: [#()]]'.
	q2 := ViQueryStep groupBy: '[:number | number odd ifTrue: [#odd] ifFalse: [#even]]'.
	p1 next: q1.
	q1 next: q2.
	q2 next: p1.
	
	sut firstStep: (ViQueryStep
		use: #(1 2 3 4 5 6)
		in: p1).
		
	self
		assert: 1 equals: sut groups size;
		assert: 6 equals: sut objects size.
		
	tmp := sut childAt: 4 inGroup: sut groups first.
	self
		assert: 0 equals: tmp groups size;
		assert: 0 equals: tmp objects size. "even -> no children"
		
	tmp := sut childAt: 5 inGroup: sut groups first.
	self
		assert: 2 equals: tmp groups size; "odd/even"
		assert: 5 equals: tmp objects size.