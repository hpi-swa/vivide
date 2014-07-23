fixtures
exampleObjects

	^ (1 to: 5) collect: [:each |
		Morph new color: (Color perform: #(red green blue yellow orange) atRandom)]