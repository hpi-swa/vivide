as yet unclassified
value

	initBlock ifNotNil: [
		form := initBlock value.
		initBlock := nil].

	^ form