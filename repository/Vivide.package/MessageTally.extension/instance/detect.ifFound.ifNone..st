*vivide-artifacts-support
detect: aBlock ifFound: foundBlock ifNone: exceptionBlock

	self 
		do: [ :element | (aBlock value: element) ifTrue: [ ^foundBlock value: element ] ].
	^exceptionBlock value