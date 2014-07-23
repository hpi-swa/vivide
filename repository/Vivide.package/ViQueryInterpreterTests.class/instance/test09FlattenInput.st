as yet unclassified
test09FlattenInput

	| q |
	q := [:num | num * num].
	sut := ViQueryInterpreter on: (ViQueryStep use: #((1 2)(3 4)) in: q).
	sut upToEnd.

	self assert: (sut allObjects hasEqualElements: #(1 4 9 16)).