system triggers
stepViewDefinitionChanged: aQueryStep from: oldDef to: newDef

	self trigger: ((ViModifiedStepEvent item: aQueryStep kind: self class stepKind)
		oldItem: {aQueryStep next. aQueryStep definition. oldDef}).