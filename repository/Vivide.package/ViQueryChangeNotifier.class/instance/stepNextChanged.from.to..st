system triggers
stepNextChanged: aQueryStep from: oldNext to: newNext

	self trigger: ((ViModifiedStepEvent item: aQueryStep kind: self class stepKind)
		oldItem: {oldNext. aQueryStep definition. aQueryStep viewDefinition}).