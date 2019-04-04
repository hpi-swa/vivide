tests
test11TupleInput

	| q |
	self flag: #notNeeded. "mt: See ViScriptTemplateTests >> #test01TupleUnpack."
	
	q := {[:num :offset | num + offset] 
		-> {#inputKind -> {Integer.Integer}. #outputKind -> Integer}} asScript.
	sut := ViQueryInterpreter on: q using: #((1 2) (3 4)) asTuples.
	sut upToEnd.

	self assert: (sut objects hasEqualElements: #(4 5 5 6)).