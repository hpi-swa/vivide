tests
test15Script

	| q |
	q := ViScriptPart new sourceCode: '[:in :out | out add: #test]'.
	sut := ViQueryInterpreter on: q.
	sut doNext.

	self assert: (sut objects hasEqualElements: #(test)).