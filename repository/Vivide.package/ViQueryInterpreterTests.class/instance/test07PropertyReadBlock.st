as yet unclassified
test07PropertyReadBlock

	| q m b |
	q := ViQueryStep property: '[:m | #color -> [m color]]'.
	m := Morph new.
	
	sut := ViQueryInterpreter on: (ViQueryStep use: {m} in: q).
	sut upToNextProperties.
	
	self flag: #ugly. "mt: Refactor!"
	b := sut properties values first first first first value.
	
	m color: Color yellow.
	self assert: b value = Color yellow.
	m color: Color red.
	self assert: b value = Color red.