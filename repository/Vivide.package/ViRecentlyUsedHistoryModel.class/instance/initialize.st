initialization
initialize

	super initialize.
	
	self flag: #refactor. "mt: Is a copy really needed? See #removeObject..."
	packages := (VivideLight historyFor: #packages) objects copy asOrderedCollection.
	classes := (VivideLight historyFor: #classes) objects copy asOrderedCollection.
	methods := (VivideLight historyFor: #methods) objects copy asOrderedCollection.
	
	self initializeUpdates.