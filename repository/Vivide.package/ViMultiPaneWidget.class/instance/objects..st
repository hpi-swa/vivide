accessing - pane api
objects: someObjects
	
	self flag: #uhoh.
	self owner ifNotNil: [:pane |
		pane instVarNamed: #lastUpdateId put: lastUpdateId].

	self outgoingObjects: someObjects.
	self yield: (self outgoingObjects collect: [:o |
		Dictionary newFrom: {#object -> o}]).