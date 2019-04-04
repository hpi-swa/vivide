tests
test12TupleOutput

	| q |
	q := {[:num | {num. num even} asTuples]
		-> {#inputKind -> Integer. #outputKind -> {Integer. Boolean}}} asScript.
	sut := ViQueryInterpreter on: q using: #(1 2 3 4).
	sut upToEnd.

	self assert: (sut objects hasEqualElements: #((1 false)(2 true)(3 false)(4 true))).