as yet unclassified
inputForChildren: someObjects

	someObjects ifNil: [^ self removeKey: #objects ifAbsent: []].
	
	^ self
		at: #objects
		put: someObjects asList