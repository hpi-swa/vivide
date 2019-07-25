tests
test03RetainPaneConnections

	| target |
	target := ViPane new
		script: [:num | num + 5] asScript;
		yourself.

	(ViSelectionConnection from: pane to: target) attach.
	self assert: 1 equals: target connections size.

	sut acceptDroppingPane: target at: 0@0 from: Morph new.
	self assert: 1 equals: target connections size.