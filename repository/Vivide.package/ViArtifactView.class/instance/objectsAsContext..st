accessing
objectsAsContext: aBoolean

	objectsAsContext := aBoolean.
	
	aBoolean ifTrue: [
		self container object: nil. "Default object expected."].