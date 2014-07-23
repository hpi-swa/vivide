initialization
initializeLocator

	locator := ViLocator new
		helpText: 'Search... (CMD+K)';
		vivide: self.

	objectsBar contentContainer addMorphBack: locator.