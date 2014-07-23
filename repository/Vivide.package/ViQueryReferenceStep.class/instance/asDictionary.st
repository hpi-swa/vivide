serialization
asDictionary

	super asDictionary in: [:dict |
		dict at: #reference put: (self reference ifNotNil: [:step | step id]).
		^ dict]