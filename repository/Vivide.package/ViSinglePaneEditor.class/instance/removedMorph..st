as yet unclassified
removedMorph: morph

	(self valueOfProperty: #isSpawning) == true
		ifTrue: [^ self].  
	self pane ifNil: [self close].