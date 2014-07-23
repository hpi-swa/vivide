updating
updateFromChangedObject: evt
	
	(self objects anySatisfy: [:obj | obj == evt item])
		ifTrue: [self triggerUpdateResults].