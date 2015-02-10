enumerating
allStepsDo: aBlock

	self stepsDo: [:step |
		aBlock value: step.
		step isReferenceStep ifTrue: [
			step reference ifNotNil: [:referencedStep |
				referencedStep allStepsDo: aBlock]].
		step isMeta ifTrue: [
			step metaReference ifNotNil: [:referencedStep |
				referencedStep allStepsDo: aBlock]]].