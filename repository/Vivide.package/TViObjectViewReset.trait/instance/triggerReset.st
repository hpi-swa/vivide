updating
triggerReset

	self setProperty: #shouldReset toValue: true.
	WorldState addDeferredUIMessage: [self tryReset].