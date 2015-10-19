merging
profile

	^ VivideLight profiles
		detect: [:p | p id = self id]
		ifNone: []