triggers for steps
stepDefinitionChanged: aQueryStep from: oldDef to: newDef

	self trigger: ((ViModifiedStepEvent item: aQueryStep kind: self class stepKind)
		oldItem: {nil. oldDef. nil}).