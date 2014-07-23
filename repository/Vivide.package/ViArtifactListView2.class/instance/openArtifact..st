actions - open
openArtifact: anObject
	"Will reuse an open artifact or open one if nothing is found."

	(self artifactContainers
		detect: [:container | container isObject: anObject]
		ifNone: [self addObject: anObject]) in: [:artifact |
			artifact expand.
			self passKeyboardFocusTo: artifact].