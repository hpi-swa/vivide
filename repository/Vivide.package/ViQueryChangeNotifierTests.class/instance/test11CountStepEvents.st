tests
test11CountStepEvents

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind using: #countAnswer:.
	
	step
		register;
		definition: nil;
		label: 'test11CountStepEvents';
		icon: Morph new;
		viewDefinition: ViQueryStepDefinition tileView.
	self assert: 5 equals: answer.