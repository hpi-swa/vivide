accessing - pane api
objects: someObjects
	
	self outgoingObjects: someObjects.
	self selectionChanged: (self outgoingObjects collect: [:o |
		Dictionary newFrom: {#object -> o}]).