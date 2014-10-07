as yet unclassified
test08PropertyWriteBlock

	| q m b |
	q := ViQueryStep property: '[:m | #color -> [m color] -> [:newColor | m color: newColor]]'.
	m := Morph new.
	
	sut := ViQueryInterpreter on: (ViQueryStep use: {m} in: q).
	sut upToNextProperties.
	
	b := sut properties values first first first first value.
	
	b value: Color yellow value: true.
	self assert: m color = Color yellow.
	b value: Color red value: true.
	self assert: m color = Color red.