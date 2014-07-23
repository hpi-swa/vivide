as yet unclassified
test07PropertyReadBlock

	| q m b |
	q := ViQueryStep property: '[:m | #color -> [m color]]'.
	m := Morph new.
	
	sut := ViQueryInterpreter on: (ViQueryStep use: {m} in: q).
	sut upToNextProperties.
	
	b := sut properties values first "props" values first "block".
	
	m color: Color yellow.
	self assert: b value = Color yellow.
	m color: Color red.
	self assert: b value = Color red.