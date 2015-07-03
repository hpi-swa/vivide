triggers for steps
stepNextChanged: aQueryStep from: oldNext to: newNext

	self trigger: ((ViModifiedStepEvent item: aQueryStep kind: self class stepKind)
		oldItem: {oldNext. nil. nil}).