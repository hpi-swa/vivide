tests
test10FlattenOutput

	| q |
	q := [:num | {num.num}] asScript.
	sut := ViScriptInterpreter on: q using: #(1 2 3 4).
	sut upToEnd.

	self assert: (sut objects hasEqualElements: #(1 1 2 2 3 3 4 4)).