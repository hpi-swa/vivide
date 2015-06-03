accessing - convenience
baseClass

	| mostSpecific |
	mostSpecific := Object.
	
	self flag: #tofix.

	self isMeta ifTrue: [
		self stepsDo: [:step | | in |
			self assert: step isMeta. "Only meta steps allowed."
			in := Object.
			(step metaInput anySatisfy: [:specs | specs second = #outer])
				ifTrue: [in := step metaReference baseClass].
			(in inheritsFrom: mostSpecific)
				ifTrue: [mostSpecific := in]].
		^ mostSpecific].
	
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