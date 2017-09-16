enumerating
nextStepsDo: aBlock
	"Enumerate all steps up to the next break, i.e. property nodes. Considers default properties."
	
	| hasProperties |
	hasProperties := false.
	self allStepsDo: [:step |
		step isPropertyStep
			ifTrue: [hasProperties := true]
			ifFalse: [
				self flag: #bug. "mt: Consider whether properties actually merge. See ViQueryInterpreter >> #upToNextProperties."
				(step isReferenceStep not and: [hasProperties])
					ifTrue: [^ self]].
		aBlock value: step].
	
	hasProperties ifFalse: [
		"Also consider default properties."
		#defaultProperties asScript ifNotNil: [:script |
			script nextStepsDo: aBlock]].