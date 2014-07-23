system triggers
stepReferenceChanged: aQueryStep from: oldReference to: newReference

	self trigger: ((ViModifiedStepReferenceEvent item: aQueryStep kind: self class stepKind)
		oldItem: {aQueryStep next. nil. aQueryStep viewDefinition. oldReference}).