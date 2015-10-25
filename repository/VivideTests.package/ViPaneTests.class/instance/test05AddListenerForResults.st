tests
test05AddListenerForResults

	| listener |
	sut currentQuery: [:obj | obj] asScript.
	
	listener := ViPane new.
	(ViResultsConnection from: sut to: listener) attach.

	self assert: listener objects isEmpty.

	sut beginUpdateChainWith: [:pane |
		pane objects: #(1 2 3)].
	self assert: (listener objects hasEqualElements: sut results).
	
	sut beginUpdateChainWith: [:pane |
		pane currentQuery: [:num | num * num] asScript].
	self assert: (listener objects hasEqualElements: sut results).

	listener clear.