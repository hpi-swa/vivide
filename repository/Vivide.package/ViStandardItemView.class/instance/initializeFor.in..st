initialization
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #yield: to: anEnvironment selector: #notifyChangedSelection:.