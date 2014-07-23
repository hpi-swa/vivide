updating - view
triggerUpdateView

	self setProperty: #shouldUpdateView toValue: true.
	WorldState addDeferredUIMessage: [self tryUpdateView].