tests
test18NoDoubleEmpty
	"If the previous notification of a view did not contain any objects, skip an additional push of a empty collection."
	
	| listener |
	sut currentQuery: [:a | a] asScript.

	listener := ViPane new.
	listener currentQuery: sut currentQuery.
	
	(ViSelectionConnection from: sut to: listener) attach.
	
	sut beginUpdateChainWith: [:pane |
		pane notifyChangedSelection: (#(1 2 3 4)
			collect: [:obj | Dictionary newFrom: {#object -> obj}])].
	self assert: (listener objects hasEqualElements: #(1 2 3 4)).

	sut beginUpdateChainWith: [:pane | pane notifyChangedSelection: #()].
	self assert: listener objects isEmpty.

	listener objects: #(1 2 3 4).
	sut beginUpdateChainWith: [:pane | pane notifyChangedSelection: #()]. "Do it again."
	self deny: listener objects isEmpty.