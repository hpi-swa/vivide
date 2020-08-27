initialization
reset

	self doNonReentrant: [
		self nodes: (self model ifNil: [#()] ifNotNil: #nodes).
		"self onObjectsChanged"].