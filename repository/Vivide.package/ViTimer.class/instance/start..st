as yet unclassified
start: milliseconds

	self isActive ifTrue: [self stop].
	self interval: milliseconds.
	self register; start: #deleteWhenFinished.