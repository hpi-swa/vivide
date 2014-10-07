interpreting
upToNextProperties
	
	numProperties := 0.
	properties := Dictionary new.
	
	[step isNil or: [(step isPropertyStep not and: [(step isScript and: [step isPropertyExtraction]) not])
		and: [numProperties > 0]]]
		whileFalse: [self next].