styling
hasBindingOf: aString

	^ (super hasBindingOf: aString) or: [self bindings includesKey: aString]