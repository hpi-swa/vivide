tests
test03UpToStep

	| q1 q2 q3 |
	q2 := [:number | number * number] asScript.
	q3 := [:number | number - 1] asScript.
	
	q2 next: q3. q3 next: q2.
	q1 := ViQueryStep use: #(1 2 3 4) in: q2.
	
	sut := ViQueryInterpreter on: q1.
	
	sut upToStep: q2.
	self assert: (#(1 4 9 16) hasEqualElements: sut allObjects).

	sut upToStep: q3.
	self assert: (#(0 3 8 15) hasEqualElements: sut allObjects).
	
	sut upToStep: q2.
	self assert: (#(0 9 64 225) hasEqualElements: sut allObjects).