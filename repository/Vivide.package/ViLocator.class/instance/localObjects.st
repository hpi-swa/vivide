accessing
localObjects

	^ self vivide
		ifNil: [#()]
		ifNotNil: [:vi | vi objects]