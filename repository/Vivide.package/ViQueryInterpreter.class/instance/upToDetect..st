interpreting
upToDetect: block

	self clearProperties.
	
	[step isNil or: [block value: step]] whileFalse: [self next].
	
	"Interpret the given step if found."
	step ifNotNil: [self next].