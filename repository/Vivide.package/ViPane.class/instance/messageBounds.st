overlay messages - position
messageBounds

	^ self view
		ifNil: [self bounds]
		ifNotNil: [:view | view bounds]