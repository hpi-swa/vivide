initialization
initialize

	super initialize.
	
	self flag: #refactor. "mt: Is a copy really needed? See #removeObject..."
	packages := ViProfile active recentPackages objects copy asOrderedCollection.
	classes := ViProfile active recentClasses objects copy asOrderedCollection.
	methods := ViProfile active recentMethods objects copy asOrderedCollection.
	
	self initializeUpdates.