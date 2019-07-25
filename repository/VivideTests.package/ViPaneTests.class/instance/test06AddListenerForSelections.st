tests
test06AddListenerForSelections

	| listener |
	sut script: {[:obj | obj] -> {#view -> ViTreePlainView}} asScript.
	
	listener := ViPane new.
	(ViSelectionConnection from: sut to: listener) attach.

	self assert: listener objects isEmpty.
	sut objects: #(1 2 3).	
	sut beginUpdateChainWith: [:pane | pane view currentVisibleView selectAll].
	self assert: (listener objects sameElements: sut selectedResults).

	listener clear.