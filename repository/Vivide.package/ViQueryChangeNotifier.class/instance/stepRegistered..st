system triggers
stepRegistered: aQueryStep

	self trigger: (ViAddedPartEvent item: aQueryStep kind: self class stepKind).