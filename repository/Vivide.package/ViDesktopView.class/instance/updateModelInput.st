as yet unclassified
updateModelInput
	"Avoid double-wrapping of single objects."
	
	self isDoingNonReentrantWork ifTrue: [^ self].
	self updateModelInput: self objects.