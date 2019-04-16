interpreting
upToDetect: block

	self clearProperties.
	
	[step isNil or: [block cull: step cull: self]] whileFalse: [self doNext].
	
	"Interpret the given step if found."
	step ifNotNil: [self doNext].