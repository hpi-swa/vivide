as yet unclassified
test10FlattenOutput

	| q |
	q := [:num | {num.num}].
	sut := ViQueryInterpreter on: (ViQueryStep use: #(1 2 3 4) in: q).
	sut upToEnd.

	self assert: (sut allObjects hasEqualElements: #(1 1 2 2 3 3 4 4)).