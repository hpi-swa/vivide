accessing - pane api
objects: someObjects
	
	self outgoingObjects: someObjects.
	self yield: (self outgoingObjects collect: [:o |
		Dictionary newFrom: {#object -> o}]).