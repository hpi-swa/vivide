memento - cleanup
clear

	self definition ifNotNil: [:def |
		self currentUpdateSetDefinition: def updateSetDefinition.
		self currentUpdateClearDefinition: def updateClearDefinition.
		
		def updateSetDefinition
			ifNotNil: [toggleBtn checked: true].
		].
		
	super clear.