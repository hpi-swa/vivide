tests
test02UpToEnd

	| q1 q2 q3 |
	q2 := ViQueryStep collect: '[:number | number * number]'.
	q1 := ViQueryStep use: #(1 2 3 4) in: q2.
	
	sut := ViQueryInterpreter on: q1.
	sut upToEnd.
	
	self assert: (#(1 4 9 16) hasEqualElements: sut allObjects).
	
	q3 := ViQueryStep property: '[:number | number asString]'.
	q2 next: q3. q3 next: q2.
	sut := ViQueryInterpreter on: q1. "reset"
	self shouldnt: [sut upToEnd] raise: Error.
