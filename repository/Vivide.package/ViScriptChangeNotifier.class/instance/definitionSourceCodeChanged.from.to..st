triggers for definitions
definitionSourceCodeChanged: aStepDefinition from: oldCode to: newCode

	self trigger: ((ViModifiedStepDefinitionEvent
		item: aStepDefinition
		kind: self class definitionKind)
		oldItem: {oldCode}).