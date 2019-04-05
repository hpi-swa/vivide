enumerating
allStepsDo: aBlock previousSteps: someSteps ifRecursive: anExceptionBlock

	self stepsDo: [:step |
		(someSteps identityIncludes: step)
			ifTrue: [^ anExceptionBlock cull: step].  
		
		someSteps add: step.
		aBlock value: step.
		
		step isReference ifTrue: [
			step reference ifNotNil: [:referencedStep |
				referencedStep
					allStepsDo: aBlock
					previousSteps: someSteps
					ifRecursive: anExceptionBlock]].
		step isMeta ifTrue: [
			step metaReference ifNotNil: [:referencedStep |
				referencedStep
					allStepsDo: aBlock
					previousSteps: someSteps
					ifRecursive: anExceptionBlock]]].