tests
test14TupleFilter

	| q |
	q := {[:a :b | a >= b
			ifTrue: [#()]
			ifFalse: [{a.b} asTuples]]} asScript.
	
	sut := ViQueryInterpreter on: (ViQueryStep use: #((1 2 3 4)(1 2 3 4)) asTuples in: q).
	sut upToNextProperties.
	
	self
		assert: (sut allObjects hasEqualElements: #((1 2)(1 3)(1 4)(2 3)(2 4)(3 4))).