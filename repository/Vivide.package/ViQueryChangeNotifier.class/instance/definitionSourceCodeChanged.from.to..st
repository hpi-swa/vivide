system triggers
definitionSourceCodeChanged: aStepDefinition from: oldCode to: newCode

	aStepDefinition isMapDefinition
		ifTrue: [self trigger: ((ViModifiedMapDefinitionEvent
			item: aStepDefinition kind: self class mapDefinitionKind)
				oldItem: {
					oldCode.
					aStepDefinition mapType.
					aStepDefinition inputKind.
					aStepDefinition outputKind})]
		ifFalse: [self trigger: ((ViModifiedStepDefinitionEvent
			item: aStepDefinition kind: (aStepDefinition isUpdateDefinition
				ifTrue: [self class updateDefinitionKind]
				ifFalse: [self class viewDefinitionKind]))
					oldItem: {oldCode})].