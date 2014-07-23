binding
bindingOf: aString 

	(self bindings includesKey: aString)
		ifFalse: [aString first isUppercase
			ifTrue: [^ nil]
			ifFalse: [self bindings at: aString put: nil]]. 
	^ self bindings associationAt: aString