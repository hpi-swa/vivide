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
		"Use ProtoObject as fall-back to allow for Object type."
		in := step valueOfProperty: #inputKind ifAbsent: [ProtoObject].
		out := step valueOfProperty: #outputKind ifAbsent: [ProtoObject].
		
		(ViQueryInterpreter isCollection: in)
			ifTrue: [^ in collect: [:ea | ea ifNil: [Object]]].
		
		(in inheritsFrom: mostSpecific)
			ifTrue: [mostSpecific := in].
			
		(step isPropertyStep not and: [in ~~ out]) "type change!"
			ifTrue: [^ mostSpecific].
		].
	^ mostSpecific