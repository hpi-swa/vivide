as yet unclassified
detect: aBlock ifFound: foundBlock ifNone: exceptionBlock

	self 
		doRecursively: [ :element | (aBlock value: element) ifTrue: [ ^foundBlock value: element ] ].
	^exceptionBlock value