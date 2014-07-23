updating - results
triggerUpdateResults

	self setProperty: #shouldUpdateResults toValue: true.
	WorldState addDeferredUIMessage: [self tryUpdateResults].