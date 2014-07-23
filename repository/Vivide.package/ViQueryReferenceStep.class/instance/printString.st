printing
printString

	^ '{1} <{2}> -> {3}' format: {
		self nextLabel ifNil: [''].
		((self class name allButFirst: 7) "ViQuery prefix"
			allButLast: 4) "Step suffix" asLowercase.
		self reference printString}