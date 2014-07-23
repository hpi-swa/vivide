tests
test18ProtectDefinitionType

	self assert: #all equals: editor currentDefinition mapType.
	editor currentType: (editor typeMappings detect: [:spec | spec notNil and: [spec key == ViQueryReferenceStep]]).
	editor acceptType.
	self assert: #all equals: editor currentDefinition mapType.