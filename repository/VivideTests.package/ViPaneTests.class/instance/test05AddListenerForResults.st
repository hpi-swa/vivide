as yet unclassified
test05AddListenerForResults

	| listener |
	sut currentQuery: [:obj | obj] asScript.
	
	listener := ViPane new.
	(ViResultsConnection from: sut to: listener) attach.

	self assert: listener objects isEmpty.
	sut objects: #(1 2 3).	
	self assert: (listener objects hasEqualElements: sut results).
	sut currentQuery: [:num | num * num] asScript.
	self assert: (listener objects hasEqualElements: sut results).

	listener clear.