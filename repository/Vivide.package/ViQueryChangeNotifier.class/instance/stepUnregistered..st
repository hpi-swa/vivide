system triggers
stepUnregistered: aQueryStep

	self trigger: (ViRemovedPartEvent item: aQueryStep kind: self class stepKind).