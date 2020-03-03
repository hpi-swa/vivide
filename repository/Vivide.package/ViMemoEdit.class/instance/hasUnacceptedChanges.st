as yet unclassified
hasUnacceptedChanges
	
	^ self originalText ~= self theText
		or: [self originalText runs ~= self theText runs]