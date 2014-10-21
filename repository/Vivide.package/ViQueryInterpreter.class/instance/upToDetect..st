as yet unclassified
upToDetect: block

	numProperties := 0.
	properties := Dictionary new.
	
	[step isNil or: [block value: step]] whileFalse: [self next].
	
	"Interpret the given step if found."
	step ifNotNil: [self next].