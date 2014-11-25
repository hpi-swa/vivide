as yet unclassified
test06AddListenerForSelections

	| listener |
	sut currentQuery: [:obj | obj] asQuery.
	
	listener := ViPane new.
	(ViSelectionConnection from: sut to: listener) attach.

	self assert: listener objects isEmpty.
	sut objects: #(1 2 3).	
	self assert: listener objects isEmpty.
	sut view currentVisibleView selectAll. "Works only for ViStandardItemView..."
	self assert: (listener objects sameElements: sut selectedResults).

	listener clear.