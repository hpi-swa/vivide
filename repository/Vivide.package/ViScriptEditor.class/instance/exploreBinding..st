actions - debugging
exploreBinding: aName

	self updateBindings.
	(self bindings at: aName ifAbsent: []) explore.