tests
test10ChangeMapType

	| oldMapType |
	oldMapType := definition mapType.
	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier mapDefinitionKind change: ModifiedEvent changeKind using: #setAnswer:.
	
	definition mapType: #all.
	self
		assert: answer isModified;
		assert: answer item == definition;
		assert: oldMapType equals: answer oldMapType;
		assert: definition mapType equals: answer mapType.