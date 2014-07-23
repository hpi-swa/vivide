as yet unclassified
test14TupleFilter

	| q |
	q := ViQueryStep convert: (
		[:a :b | a >= b ifTrue: [#()] ifFalse: [{a.b}]] -> {{Integer.Integer}.{Integer.Integer}}).
	sut := ViQueryInterpreter on: (ViQueryStep use: #((1 2 3 4)(1 2 3 4)) in: q).
	sut upToNextProperties.
	
	self
		assert: (sut allObjects hasEqualElements: #((1 2)(1 3)(1 4)(2 3)(2 4)(3 4))).