tests
test01UpToNextProperties

	| q1 q2 q3 |
	q2 := ViQueryStep collect: '[:number | number * number]'.
	q3 := ViQueryStep property: '[:number | number asString]'.
	
	q2 next: q3. q3 next: q2.
	q1 := ViQueryStep use: #(1 2 3 4) in: q2.
	
	sut := ViQueryInterpreter on: q1.
	
	sut upToNextProperties.
	self assert: (#(1 4 9 16) hasEqualElements: sut allObjects).

	sut upToNextProperties.
	self assert: (#(1 16 81 256) hasEqualElements: sut allObjects).