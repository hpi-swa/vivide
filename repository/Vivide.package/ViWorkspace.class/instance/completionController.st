completion
completionController
	
	^ completionController ifNil: [
		completionController := ECController model: self]