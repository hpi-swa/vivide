tests
test11TupleInput

	| q |
	q := {[:num :offset | num + offset] 
		-> {#inputKind -> {Integer.Integer}. #outputKind -> Integer}} asScript.
	sut := ViQueryInterpreter on: (ViQueryStep use: #((1 2) (3 4)) asTuples in: q).
	sut upToEnd.

	self assert: (sut allObjects hasEqualElements: #(4 5 5 6)).