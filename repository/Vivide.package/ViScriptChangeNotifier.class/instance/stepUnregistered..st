triggers for steps
stepUnregistered: aQueryStep

	self trigger: (ViRemovedPartEvent item: aQueryStep kind: self class stepKind).