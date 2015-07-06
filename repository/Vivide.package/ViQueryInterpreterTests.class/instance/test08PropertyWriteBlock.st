tests
test08PropertyWriteBlock

	| q m b |
	q := [:morph | 
		#color 
			-> [morph color] 
			<- [:newColor | morph color: newColor]] asScript.
	m := Morph new.
	
	sut := ViQueryInterpreter on: (ViQueryStep use: {m} in: q).
	sut upToNextProperties.
	
	"Expected block: [:object :isSet | ... ]"
	b := (sut propertiesFor: m) at: #color.
	
	b value: Color yellow value: true.
	self assert: m color = Color yellow.
	b value: Color red value: true.
	self assert: m color = Color red.