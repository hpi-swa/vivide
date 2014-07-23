printing
printString

	^ '{1} <{2}>' format: {
		self sourceCode withoutLineEndingsTruncatedTo: 100.
		self id}