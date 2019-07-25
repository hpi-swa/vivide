tests
test19SelfLoop

	sut script: [:a | a + 1] asScript.
	sut objects: #(1).
	(ViSelectionConnection from: sut to: sut) attach.

	self assert: (#(1) hasEqualElements: sut objects).
	
	sut beginUpdateChainWith: [:pane | pane notifyChangedSelection: sut model nodes].
	self assert: (#(2) hasEqualElements: sut objects).

	sut beginUpdateChainWith: [:pane | pane notifyChangedSelection: sut model nodes].
	self assert: (#(3) hasEqualElements: sut objects).