as yet unclassified
lastStep
	"Find the current script interpreter on the stack and return the step it tried to interpret."
	
	^ (stack detect: [:ctxt | ctxt receiver isKindOf: ViQueryInterpreter] ifNone: [])
		ifNotNil: [:ctxt | ctxt receiver next "script step"]