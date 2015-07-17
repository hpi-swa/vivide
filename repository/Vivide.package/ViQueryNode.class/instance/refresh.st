reset
refresh

	self flag: #refactor. "mt: Rename: triggerUpdateChildren."
	updateCount := true.
	WorldState addDeferredUIMessage: [self tryUpdateChildren].