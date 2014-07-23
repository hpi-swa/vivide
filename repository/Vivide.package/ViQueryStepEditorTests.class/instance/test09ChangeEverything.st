tests
test09ChangeEverything
	"Make a property out of this transformation. See #setUp."
	
	editor
		currentIcon: Morph new;
		currentLabel: 'test09ChangeEverything';
		currentType: (editor typeMappings detect: [:spec | spec notNil and: [spec key == ViQueryPropertyStep]]);
		currentSourceCode: '[:obj | #text -> obj asString]'.
	self assert: editor hasUnacceptedChanges.

	editor acceptChanges.
	self
		deny: editor hasUnacceptedChanges;
		assert: step isPropertyStep;
		assert: step isHomogeneous.