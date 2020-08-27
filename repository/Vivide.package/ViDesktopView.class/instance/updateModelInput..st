updating
updateModelInput: newObjects

	self model ifNil: [
		"Needed for tests that do not use a model here."
		"self onObjectsChanged."
		^ self].
	
	self doNonReentrant: [
		
		self pane validInputConnections
			detect: [:c | c source hasProperty: #paneViewInput]
			ifFound: [:c | c source objects: newObjects]
			ifNone: ["For compatibility with Morphic world only."
				self model inputForChildren: newObjects].
		
		(self firstOwnerSuchThat: [:morph | morph isPaneView])
			ifNotNil: [:paneView | paneView updateModelInput].
			
		"self onObjectsChanged"].