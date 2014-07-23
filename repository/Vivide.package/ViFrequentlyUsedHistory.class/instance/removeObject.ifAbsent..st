add/remove
removeObject: anObject ifAbsent: errorBlock

	self frequencies removeKey: anObject ifAbsent: [].
	
	[^ super removeObject: anObject ifAbsent: errorBlock]
		ensure: [self normalizeFrequencies]