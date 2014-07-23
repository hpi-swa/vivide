completion
completionController
	
	^ completionController ifNil: [
		completionController := ViCompletionController model: self]