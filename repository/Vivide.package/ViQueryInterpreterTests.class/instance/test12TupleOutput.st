as yet unclassified
test12TupleOutput

	| q |
	q := [:num | {num. num even}] -> {Integer. {Integer. Boolean}}.
	sut := ViQueryInterpreter on: (ViQueryStep use: #((1 2) (3 4)) in: q).
	sut upToEnd.

	self assert: (sut allObjects hasEqualElements: #((1 false)(2 true)(3 false)(4 true))).