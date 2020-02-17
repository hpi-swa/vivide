reset
triggerUpdateChildren

	updateCount := true.
	WorldState addDeferredUIMessage: [self tryUpdateChildren].