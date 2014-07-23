accessing - convenience
defaultQueryPage

	self pages size = 1
		ifTrue: [self addOutputPageSilently].
	^ self pages at: 2