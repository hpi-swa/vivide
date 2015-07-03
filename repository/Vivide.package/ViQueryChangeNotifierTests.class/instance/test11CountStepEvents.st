tests
test11CountStepEvents

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind using: #countAnswer:.
	
	step definition: nil.
	self assert: 1 equals: answer.
	step label: 'test11CountStepEvents'.
	self assert: 2 equals: answer.
	step icon: Morph new.
	self assert: 3 equals: answer.
	step setProperty: #view toValue: ViTileView.
	self assert: 4 equals: answer.