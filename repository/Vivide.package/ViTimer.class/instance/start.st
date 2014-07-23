as yet unclassified
start

	self isActive ifTrue: [self stop].
	animation register; start: #deleteWhenFinished.