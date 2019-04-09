testing
isScriptEndOfTree
	^ self allSteps first isRecursive and: [self allSteps first accessibleSteps last == self thisStep]