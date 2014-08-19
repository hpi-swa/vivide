as yet unclassified
start: milliseconds

	self isActive ifTrue: [self stop].
	self interval: milliseconds.
	animation register; start: #deleteWhenFinished.