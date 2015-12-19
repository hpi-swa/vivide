actions - open
openArtifact: anObject
	"Will reuse an open artifact or open one if nothing is found."

	self flag: #buggy. "mt: We only want to open script parts that belong to other parts. Usually, scripts should open in a distinct window/container. We should implement a check for this relatedness."
	((anObject isKindOf: ViScriptPart) and: [self objects noneSatisfy: [:obj | obj isKindOf: ViScriptPart]])
		ifTrue: [^ self artifactRequested: anObject].

	(self artifactContainers
		detect: [:container | container isObject: anObject]
		ifNone: [self addObject: anObject]) in: [:artifact |
			artifact expand.
			self passKeyboardFocusTo: artifact].