interpreting
upToNextProperties
	
	numProperties := 0.
	properties := IdentityDictionary new.
	
	[step isNil or: [step isPropertyStep not and: [numProperties > 0]]]
		whileFalse: [self next].