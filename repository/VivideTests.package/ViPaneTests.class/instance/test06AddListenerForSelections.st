as yet unclassified
test06AddListenerForSelections

	| listener |
	sut currentQuery: {[:obj | obj] -> {#view -> ViTreePlainView}} asScript.
	
	listener := ViPane new.
	(ViSelectionConnection from: sut to: listener) attach.

	self assert: listener objects isEmpty.
	sut objects: #(1 2 3).	
	sut view currentVisibleView selectAll.
	self assert: (listener objects sameElements: sut selectedResults).

	listener clear.