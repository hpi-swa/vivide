accessing - convenience
baseClass

	| mostSpecific |
	mostSpecific := Object.
	self allStepsDo: [:step | | in out |
		in := step definition ifNil: [Object] ifNotNil: [:def | def inputKind].
		out := step definition ifNil: [Object] ifNotNil: [:def | def outputKind].
		
		(ViQueryInterpreter isCollection: in)
			ifTrue: [^ in].
		
		(in inheritsFrom: mostSpecific)
			ifTrue: [mostSpecific := in].
			
		(step isPropertyStep not and: [in ~~ out]) "type change!"
			ifTrue: [^ mostSpecific].
		].
	^ mostSpecific