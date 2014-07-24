operations
doMethodReference: aMethodReference

	aMethodReference isValid ifFalse: [
		panel := self textboxFor: 'Invalid method reference!' color: Color red muchLighter.
		^ self].

	^ super doMethodReference: aMethodReference