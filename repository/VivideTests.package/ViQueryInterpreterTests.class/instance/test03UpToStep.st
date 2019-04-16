tests
test03UpToStep

	| scriptOne scriptTwo |
	scriptOne := [:number | number * number] asScript.
	scriptTwo := [:number | number - 1] asScript.
	
	scriptOne next: scriptTwo. scriptTwo next: scriptOne.
	
	sut := ViScriptInterpreter on: scriptOne using: #(1 2 3 4).
	
	sut upToStep: scriptOne.
	self assert: (#(1 4 9 16) hasEqualElements: sut objects).

	sut upToStep: scriptTwo.
	self assert: (#(0 3 8 15) hasEqualElements: sut objects).
	
	sut upToStep: scriptOne.
	self assert: (#(0 9 64 225) hasEqualElements: sut objects).