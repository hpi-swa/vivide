accessing - convenience
currentClass

	^ self currentType
		ifNil: [self step class]
		ifNotNil: [:spec | spec key]