*vivide
unwrapList

	^ self isList ifFalse: [self]
			ifTrue: [self ifEmpty: [nil]
			ifNotEmpty: [self size = 1 ifFalse: [self]
			ifTrue: [self at: 1]]]
