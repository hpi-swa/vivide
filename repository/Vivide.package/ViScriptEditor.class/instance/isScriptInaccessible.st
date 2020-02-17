testing
isScriptInaccessible
	
	^ self thisStep
		ifNil: [false]
		ifNotNil: [self allSteps first inaccessibleSteps identityIncludes: self thisStep]