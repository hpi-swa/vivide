tests
test13DoSilently

	answer := 0.
	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind using: #countAnswer:.
	
	sut doSilently: [step
		register;
		definition: nil;
		label: 'test13DoSilently';
		icon: Morph new;
		setProperty: #view toValue: ViTileView].
	self assert: 0 equals: answer.