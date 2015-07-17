as yet unclassified
triggerDeferredClear

	self setProperty: #shouldClear toValue: true.
	WorldState addDeferredUIMessage: [self tryDeferredClear].