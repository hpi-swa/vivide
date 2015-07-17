as yet unclassified
triggerDeferredObjects

	self setProperty: #shouldSetObjects toValue: true.
	WorldState addDeferredUIMessage: [self tryDeferredObjects].