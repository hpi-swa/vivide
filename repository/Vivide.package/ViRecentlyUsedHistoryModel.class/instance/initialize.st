initialization
initialize

	super initialize.
	
	self flag: #refactor. "mt: Is a copy really needed? See #removeObject..."
	packages := ViObjectHistory recentPackages objects copy asOrderedCollection.
	classes := ViObjectHistory recentClasses objects copy asOrderedCollection.
	methods := ViObjectHistory recentMethods objects copy asOrderedCollection.
	
	self initializeUpdates.