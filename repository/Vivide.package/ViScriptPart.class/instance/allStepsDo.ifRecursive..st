enumerating
allStepsDo: aBlock ifRecursive: anExceptionBlock
	
	| previousSteps enumerator |
	previousSteps := OrderedCollection new.
	enumerator := ViScriptEnumerator on: self.
	
	[enumerator atEnd] whileFalse: [
		enumerator upToExtractionDo: [:step |
	
			(previousSteps identityIncludes: step)
				ifTrue: [^ anExceptionBlock cull: previousSteps last cull: step]. 
				
			previousSteps add: step.
			aBlock value: step.		
	] ]