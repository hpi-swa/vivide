updating
onContextChanged

	self hasUnacceptedChanges
		ifFalse: [self updateContext; clear].