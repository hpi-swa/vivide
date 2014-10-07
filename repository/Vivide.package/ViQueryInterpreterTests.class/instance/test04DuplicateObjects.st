tests
test04DuplicateObjects

	| q1 q2 q3 |
	q2 := ViQueryStep collect: '[:number | number * number]'.
	q3 := ViQueryStep property: '[:number | number asString]'.
	q2 next: q3.
	q1 := ViQueryStep use: #(1 1 1 1) in: q2.
	
	sut := ViQueryInterpreter on: q1.
	
	sut upToNextProperties.
	self assert: 4 equals: (sut createNodesForGroup: #all) size.