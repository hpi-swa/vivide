as yet unclassified
allStepsDo: aBlock previousSteps: someSteps

	self stepsDo: [:step |
		(someSteps identityIncludes: step)
			ifTrue: [^ self].  
		
		someSteps add: step.
		aBlock value: step.
		
		step isReferenceStep ifTrue: [
			step reference ifNotNil: [:referencedStep |
				referencedStep
					allStepsDo: aBlock
					previousSteps: someSteps]].
		step isMeta ifTrue: [
			step metaReference ifNotNil: [:referencedStep |
				referencedStep
					allStepsDo: aBlock
					previousSteps: someSteps]]].