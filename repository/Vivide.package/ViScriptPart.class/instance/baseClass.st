accessing - convenience
baseClass

	| mostSpecific |
	mostSpecific := Object.
	self allStepsDo: [:step | | in out |
		in := step valueOfProperty: #inputKind ifAbsent: [Object].
		out := step valueOfProperty: #outputKind ifAbsent: [Object].
		
		(ViQueryInterpreter isCollection: in)
			ifTrue: [^ in].
		
		(in inheritsFrom: mostSpecific)
			ifTrue: [mostSpecific := in].
			
		(step isPropertyStep not and: [in ~~ out]) "type change!"
			ifTrue: [^ mostSpecific].
		].
	^ mostSpecific