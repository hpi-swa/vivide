actions - open
openArtifact: anObject
	"Will reuse an open artifact or open one if nothing is found."

	(anObject isKindOf: ViScriptPart)
		ifTrue: [^ self artifactRequested: anObject].

	(self artifactContainers
		detect: [:container | container isObject: anObject]
		ifNone: [self addObject: anObject]) in: [:artifact |
			artifact expand.
			self passKeyboardFocusTo: artifact].