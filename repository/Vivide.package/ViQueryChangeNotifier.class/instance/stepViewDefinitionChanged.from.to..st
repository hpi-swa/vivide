system triggers
stepViewDefinitionChanged: aQueryStep from: oldDef to: newDef

	self trigger: ((ViModifiedStepDefinitionEvent item: aQueryStep kind: self class viewDefinitionKind)
		oldItem: {oldDef. newDef}).