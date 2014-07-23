as yet unclassified
test11TupleInput

	| q |
	q := [:num :offset | num + offset] -> {{Integer.Integer}.Integer}.
	sut := ViQueryInterpreter on: (ViQueryStep use: #((1 2) (3 4)) in: q).
	sut upToEnd.

	self assert: (sut allObjects hasEqualElements: #(4 5 5 6)).