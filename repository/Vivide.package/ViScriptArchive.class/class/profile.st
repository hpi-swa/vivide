merging
profile
	(self respondsTo: #id) ifFalse: [^ nil].
	^ VivideLight profiles
		detect: [:p | p id = self id]
		ifNone: []