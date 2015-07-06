tests
test07PropertyReadBlock

	| q m b |
	q := [:morph | #color -> [morph color]] asScript.
	m := Morph new.
	
	sut := ViQueryInterpreter on: (ViQueryStep use: {m} in: q).
	sut upToNextProperties.
	
	b := (sut propertiesFor: m) at: #color.
	
	m color: Color yellow.
	self assert: b value = Color yellow.
	m color: Color red.
	self assert: b value = Color red.