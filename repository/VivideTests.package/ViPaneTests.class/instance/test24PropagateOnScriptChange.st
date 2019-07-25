tests
test24PropagateOnScriptChange

	| listener |
	listener := ViPane new.
	
	sut script: [:a | a + 1] asScript.
	sut objects: #(1).
	
	(ViResultsConnection from: sut to: listener) attach.
	
	self assert: sut results notEmpty.
	self assert: (listener objects hasEqualElements: sut results).

	sut script sourceCode: [:a | a + 2] asScript sourceCode.
	ActiveWorld doOneSubCycle.
	self assert: (listener objects hasEqualElements: sut results).	