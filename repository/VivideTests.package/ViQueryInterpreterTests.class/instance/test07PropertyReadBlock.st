tests
test07PropertyReadBlock

	| q m b |
	q := [:morph | #color -> [morph color]] asScript.
	m := Morph new.
	
	sut := ViScriptInterpreter on: q using: {m}.
	sut upToExtraction.
	
	b := (sut propertiesFor: m) at: #color.
	
	m color: Color yellow.
	self assert: b value = Color yellow.
	m color: Color red.
	self assert: b value = Color red.