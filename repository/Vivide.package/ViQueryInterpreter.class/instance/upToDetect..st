interpreting
upToDetect: block

	self clearProperties.
	
	[step isNil or: [block cull: step cull: self]] whileFalse: [self next].
	
	"Interpret the given step if found."
	step ifNotNil: [self next].