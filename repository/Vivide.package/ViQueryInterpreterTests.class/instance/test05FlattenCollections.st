tests
test05FlattenCollections

	| q1 q2 |
	q2 := {
		[:number | number]. "This will get code appended to flatten collections."
		[:number | #text -> number asString]. "This will not flatten collections."} asScript.
	q1 := ViQueryStep use: #((1 2) 3 (4 5)) in: q2.
	
	sut := ViQueryInterpreter on: q1.
	
	sut upToNextProperties.
	self assert: 5 equals: (sut objectsFor: #all) size.