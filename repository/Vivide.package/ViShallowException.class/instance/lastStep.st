as yet unclassified
lastStep

	^ (stack detect: [:ctxt | ctxt receiver isKindOf: ViQueryInterpreter] ifNone: [])
		ifNotNil: [:ctxt | ctxt receiver currentStep]