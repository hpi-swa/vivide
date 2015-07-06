tests
test04DuplicateObjects

	| q1 q2 |
	q2 := {
		[:number | number * number].
		[:number | #text -> number asString]} asScript.

	q1 := ViQueryStep use: #(1 1 1 1) in: q2.
	
	sut := ViQueryInterpreter on: q1.
	
	sut upToNextProperties.
	self assert: 4 equals: (sut createNodesForGroup: #all) size.