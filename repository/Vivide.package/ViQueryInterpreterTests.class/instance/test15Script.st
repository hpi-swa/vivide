as yet unclassified
test15Script

	| q |
	q := ViScriptPart new sourceCode: '[:in :out | out add: #test]'.
	sut := ViQueryInterpreter on: q.
	sut next.

	self assert: (sut allObjects hasEqualElements: #(test)).