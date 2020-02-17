interpretation
baseClass

	| mostSpecific |
	mostSpecific := Object.
	
	self flag: #tofix.

	self isMeta ifTrue: [
		self flag: #metaScript.
		
		self stepsDo: [:step | | in |
			self assert: step isMeta. "Only meta steps allowed."
			in := Object.
			(step metaInput anySatisfy: [:specs | specs second = #outer]) ifTrue: [
				in := step metaReference baseClass.
				"If outer input is part of a tuple, skip type filter for now..."
				in isList ifTrue: [in := Object]].
			
			(in inheritsFrom: mostSpecific)
				ifTrue: [mostSpecific := in]].
		^ mostSpecific].

	"If it starts with tuple, abort right now!"
	(self valueOfProperty: #inputKind ifAbsent: [ProtoObject]) in: [:firstGuess |
		firstGuess isList ifTrue: [^ firstGuess collect: [:ea | ea ifNil: [Object]]]].
	
	self allStepsDo: [:step | | in out |
		"Use ProtoObject as fall-back to allow for Object type."
		in := step valueOfProperty: #inputKind ifAbsent: [ProtoObject].
		out := step valueOfProperty: #outputKind ifAbsent: [ProtoObject].
		
		"Tuple expected?! Aborting guess..."
		in isList ifTrue: [^ mostSpecific].
		
		(in inheritsFrom: mostSpecific)
			ifTrue: [mostSpecific := in].
			
		(step isPropertyExtraction not and: [in ~~ out]) "type change!"
			ifTrue: [^ mostSpecific].
		].
	^ mostSpecific