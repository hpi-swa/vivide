accessing
latest
	^ self class 
			fromSources: sources 
			andPointer: (self theClass compiledMethodAt: selector) sourcePointer