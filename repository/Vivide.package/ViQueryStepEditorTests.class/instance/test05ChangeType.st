tests
test05ChangeType

	| prevDef prevView prevIcon prevLabel |
	step register.
	
	prevDef := step definition.
	prevView := step viewDefinition.
	prevIcon := step icon.
	prevLabel := step label.

	self
		assert: step class equals: editor currentType key;
		assert: definition mapType equals: editor currentType value first.

	"Try out all types."
	editor typeMappings select: [:spec | spec notNil and: [spec key ~= editor currentType key]] thenDo: [:spec |
		editor currentType: spec.
		self assert: editor hasUnacceptedChanges.

		editor acceptType.
		self deny: editor hasUnacceptedChanges.
	
		self
			assert: step isRegistered;
			assert: spec key equals: step class;
			assert: (spec value first ifNil: [definition mapType]) "reference type" equals: definition mapType;
			assert: step definition == prevDef;
			assert: step viewDefinition == prevView;
			assert: step icon == prevIcon;
			assert: step label == prevLabel].