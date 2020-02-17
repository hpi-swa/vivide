serialization
asDictionary

	^ super asDictionary in: [:dict |
		dict
			at: #sourceCode put: self sourceCode;
			at: #block put: (ViQueryCodeBlock new sourceCode: self sourceCode);
			yourself]