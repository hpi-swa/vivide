as yet unclassified
input

	self updateContext.

	"Collect all objects above the first step in the list."
	^ Array streamContents: [:stream |
		self context detect: [:obj |
			(obj isKindOf: ViQueryStep)
				ifTrue: [true "stop here"]
				ifFalse: [stream nextPutAll: obj asList. false]]].