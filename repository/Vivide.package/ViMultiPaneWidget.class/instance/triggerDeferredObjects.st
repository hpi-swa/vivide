accessing - pane api
triggerDeferredObjects

	self setProperty: #shouldSetObjects toValue: true.
	WorldState addDeferredUIMessage: [self tryDeferredObjects].