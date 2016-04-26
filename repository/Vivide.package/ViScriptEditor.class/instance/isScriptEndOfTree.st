testing - object
isScriptEndOfTree
	^ self firstStep isRecursive and: [self firstStep accessibleSteps last == self object]