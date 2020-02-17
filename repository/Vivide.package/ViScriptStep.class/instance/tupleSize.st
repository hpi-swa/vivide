as yet unclassified
tupleSize
	"Mirrors ViPane >> #tupleSize."
	
	"^ self baseClass asList size"
	^ self isGlobal ifTrue: [0] ifFalse: [self inputCount]