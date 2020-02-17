updating - deferred objects
triggerDeferredObjects

	self setProperty: #shouldSetObjects toValue: true.
	WorldState addDeferredUIMessage: [self tryDeferredObjects].