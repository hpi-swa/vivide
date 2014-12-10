bindings
bindingOf: aString 

	aString = 'thisScript' ifTrue: [^ nil].

	(self bindings includesKey: aString)
		ifFalse: [aString first isUppercase
			ifTrue: [^ nil "No class name bindings or globals here."]
			ifFalse: [self bindings at: aString put: nil]]. 
	^ self bindings associationAt: aString