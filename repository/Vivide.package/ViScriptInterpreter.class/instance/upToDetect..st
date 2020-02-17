interpreting
upToDetect: block
	"Might not return. Can be used for finite but recursive scripts. For example, interpret until the input is empty."
	
	[self atEnd] whileFalse: [
		self clearProperties.
		self upToExtractionDo: [:nextStep :input :interpreter |
			(block cull: nextStep cull: input cull: interpreter)
				ifTrue: [self doNext. ^ self]]].