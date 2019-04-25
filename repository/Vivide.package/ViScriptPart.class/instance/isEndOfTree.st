recursion
isEndOfTree

	^ self isRecursive and: [self accessibleSteps last = self]