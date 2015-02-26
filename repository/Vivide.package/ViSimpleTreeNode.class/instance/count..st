as yet unclassified
count: aBlock

	| sum |
	sum := 0.
	self doRecursively: [:each | (aBlock value: each) ifTrue: [sum := sum + 1]].
	^ sum