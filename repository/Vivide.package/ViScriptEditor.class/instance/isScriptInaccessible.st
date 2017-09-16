testing - object
isScriptInaccessible
	
	^ self firstStep
		ifNil: [false]
		ifNotNil: [:s | s inaccessibleSteps identityIncludes: self object]