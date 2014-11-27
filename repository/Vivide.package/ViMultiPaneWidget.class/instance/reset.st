initialization
reset
	
	self model ifNil: [^ self].

	self updatePanesFor: self paneSpecs.
	self notifyAboutIncomingObjects.