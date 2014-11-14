actions - open
openArtifact: anObject
	"Will reuse an open artifact or open one if nothing is found."

	(anObject isKindOf: ViScriptPart) ifTrue: [
		anObject allSteps in: [:steps |
		"See behavior of ViScriptEditor >> #onContextChanged."
			steps size > 1 ifTrue: [^ self openArtifacts: steps]]].

	(self artifactContainers
		detect: [:container | container isObject: anObject]
		ifNone: [self addObject: anObject]) in: [:artifact |
			artifact expand.
			self passKeyboardFocusTo: artifact].