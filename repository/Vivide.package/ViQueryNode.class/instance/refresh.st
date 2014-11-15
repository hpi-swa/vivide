reset
refresh

	updateCount := true.
	WorldState addDeferredUIMessage: [self tryUpdateChildren].