accessing - convenience
baseClass

	| mostSpecific |
	mostSpecific := Object.
	
	self flag: #tofix.

	self isMeta ifTrue: [
		self stepsDo: [:step | | in |
			self assert: step isMeta. "Only meta steps allowed."
			in := Object.
			(step metaInput anySatisfy: [:specs | specs second = #outer]) ifTrue: [
				in := step metaReference baseClass.
				"If outer input is part of a tuple, skip type filter for now..."
				(ViQueryInterpreter isCollection: in)
					ifTrue: [in := Object]].
			
			(in inheritsFrom: mostSpecific)
				ifTrue: [mostSpecific := in]].
		^ mostSpecific].

	"If it starts with tuple, abort right now!"
	(self valueOfProperty: #inputKind ifAbsent: [ProtoObject]) in: [:firstGuess |
		(ViQueryInterpreter isCollection: firstGuess)
			ifTrue: [^ firstGuess collect: [:ea | ea ifNil: [Object]]]].
	
	self allStepsDo: [:step | | in out |
		"Use ProtoObject as fall-back to allow for Object type."
		in := step valueOfProperty: #inputKind ifAbsent: [ProtoObject].
		out := step valueOfProperty: #outputKind ifAbsent: [ProtoObject].
		
		"Tuple expected?! Aborting guess..."
		(ViQueryInterpreter isCollection: in)
			ifTrue: [^ mostSpecific].
		
		(in inheritsFrom: mostSpecific)
			ifTrue: [mostSpecific := in].
			
		(step isPropertyStep not and: [in ~~ out]) "type change!"
			ifTrue: [^ mostSpecific].
		].
	^ mostSpecific