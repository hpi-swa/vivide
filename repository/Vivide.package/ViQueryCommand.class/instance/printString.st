printing
printString

	^ '{1} <command> -> {2}' format: {
		self label ifNil: [''].
		self definition printString}