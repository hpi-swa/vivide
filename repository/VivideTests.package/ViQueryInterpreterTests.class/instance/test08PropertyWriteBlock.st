tests
test08PropertyWriteBlock

	| q m b |
	q := [:morph | 
		#color 
			-> [morph color] 
			<- [:newColor | morph color: newColor]] asScript.
	m := Morph new.
	
	sut := ViScriptInterpreter on: q using: {m}.
	sut upToExtraction.
	
	"Expected block: [:object :isSet | ... ]"
	b := (sut propertiesFor: m) at: #color.
	
	b value: Color yellow value: true.
	self assert: m color = Color yellow.
	b value: Color red value: true.
	self assert: m color = Color red.