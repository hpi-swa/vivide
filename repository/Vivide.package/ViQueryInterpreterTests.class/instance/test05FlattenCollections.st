as yet unclassified
test05FlattenCollections

	| q1 q2 |
	q2 := ViQueryStep property: '[:number | number asString]'.
	q1 := ViQueryStep use: #((1 2) 3 (4 5)) in: q2.
	
	sut := ViQueryInterpreter on: q1.
	
	sut upToNextProperties.
	self assert: 5 equals: (sut objectsFor: #all) size.