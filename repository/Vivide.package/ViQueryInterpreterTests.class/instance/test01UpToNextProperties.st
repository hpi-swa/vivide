tests
test01UpToNextProperties

	| q1 q2 |
	q2 := {
		[:number | number * number].
		[:number | #text -> number asString].
		1} asScript.
	
	q1 := ViQueryStep use: #(1 2 3 4) in: q2.
	
	sut := ViQueryInterpreter on: q1.
	
	sut upToNextProperties.
	self assert: (#(1 4 9 16) hasEqualElements: sut allObjects).

	sut upToNextProperties.
	self assert: (#(1 16 81 256) hasEqualElements: sut allObjects).