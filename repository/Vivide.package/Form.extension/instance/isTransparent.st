*vivide
isTransparent

	self depth = 32 ifFalse: [^ (self asFormOfDepth: 32) isTransparent].
	
	self unhibernate.
	^ self bits allSatisfy: [:pixelValue | (pixelValue bitShift: -24) = 0].