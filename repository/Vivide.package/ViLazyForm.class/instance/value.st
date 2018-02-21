as yet unclassified
value

	initBlock ifNotNil: [
		form := initBlock value.
		shouldScale == true
			ifTrue: [form := form scaledToDisplay].
		initBlock := nil].

	^ form