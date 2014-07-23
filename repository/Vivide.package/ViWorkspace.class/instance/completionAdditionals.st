completion
completionAdditionals
	
	^ self bindings keys asArray replace: [ :each | 
		ECLocalEntry 
			contents: each
			type: #local ]