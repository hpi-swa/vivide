triggers for steps
stepRegistered: aQueryStep

	self trigger: (ViAddedPartEvent item: aQueryStep kind: self class stepKind).