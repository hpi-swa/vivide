accessing - objects
objects: someObjects

	| objectsChanged newObjects |
	objectsChanged := (someObjects hasEqualElements: self inputPage objects) not.
	newObjects := someObjects reject: [:o | self inputPage objects includes: o].
	
	self inputPage objects: someObjects.
	
	self flag: #tricky. "mt: 	Scene-graph signals will not work if the page is invisible...."
	self inputPage isVisible ifFalse: [ 
		objectsChanged ifTrue: [self updateQueryObjects].
		self updateHeaderText.
		
		newObjects do: [:obj | ViObjectHistory addObject: obj]].