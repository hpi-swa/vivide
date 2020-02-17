pane api
reset
	
	self doNonReentrant: [
		self objects: (self model ifNil: [#()] ifNotNil: #objects).
		self onObjectsChanged].