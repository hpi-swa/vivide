completion
guessTypeForName: aString 

	^ (self bindings at: aString ifAbsent: [])
		ifNotNil: [:binding | binding class]