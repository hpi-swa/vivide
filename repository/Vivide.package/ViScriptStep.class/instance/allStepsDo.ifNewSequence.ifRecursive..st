recursion
allStepsDo: aBlock ifNewSequence: anotherBlock ifRecursive: anExceptionBlock
	
	| previousSteps enumerator |
	previousSteps := OrderedCollection new.
	enumerator := ViScriptEnumerator on: self.
	
	self flag: #bug. "mt: Cannot work because of referencing the same step multiple times such as #groups. See test02RecursionVersusReuse."	
	
	[enumerator atEnd] whileFalse: [
		anotherBlock value.	
	
		enumerator upToExtractionDo: [:step |
	
			(previousSteps identityIncludes: step)
				ifTrue: [(anExceptionBlock cull: previousSteps last cull: step) == true ifTrue: [^ self]]. 
				
			previousSteps add: step.
			aBlock value: step.		
	] ]