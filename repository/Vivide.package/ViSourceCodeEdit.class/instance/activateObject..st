actions - activation
activateObject: anObject

	self flag: #informationHiding. "mt: Shoud not decide if class here!"
	anObject isBehavior
		ifTrue: [self artifactRequested: anObject].