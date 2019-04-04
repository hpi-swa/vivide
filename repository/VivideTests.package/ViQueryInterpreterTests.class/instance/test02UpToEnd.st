tests
test02UpToEnd

	| scriptOne scriptTwo |
	scriptOne := [:number | number * number] asScript.
	
	sut := ViQueryInterpreter on: scriptOne using: #(1 2 3 4).
	sut upToEnd.
	
	self assert: (#(1 4 9 16) hasEqualElements: sut objects).
	
	scriptTwo := [:number | number asString] asScript.
	scriptOne next: scriptTwo. scriptTwo next: scriptOne.
	sut := ViQueryInterpreter on: scriptOne using: #(1 2 3 4). "reset"
	self shouldnt: [sut upToEnd] raise: Error.
