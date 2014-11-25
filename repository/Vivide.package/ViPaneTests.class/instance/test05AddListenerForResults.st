as yet unclassified
test05AddListenerForResults

	| listener |
	sut currentQuery: [:obj | obj] asQuery.
	
	listener := ViPane new.
	listener listenForResultsFrom: sut.

	self assert: listener objects isEmpty.
	sut objects: #(1 2 3).	
	self assert: (listener objects hasEqualElements: sut results).
	sut currentQuery: [:num | num * num] asQuery.
	self assert: (listener objects hasEqualElements: sut results).

	listener clear.