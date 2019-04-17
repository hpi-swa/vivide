tests - advanced extraction
test02ExtractPropertyAsWriteBlock

	| script object property interpreter |
	script := [:morph | 
		#color 
			-> morph color
			<- [:newColor | morph color: newColor]] asScript.
	object := Morph new.
	interpreter := ViScriptInterpreter on: script using: {object}.
	interpreter upToExtraction.
	
	property := (interpreter propertiesFor: object) at: #color.
	self
		assert: property isBlock;
		assert: 2 equals: property numArgs. "[:object :isSet | ... ]"
	
	"Modify the domain object through the property (block). Check whether the change was propagated to the domain object."
	self
		deny: object color = Color yellow;
		deny: (property value: nil value: false) = Color yellow.
	property value: Color yellow value: true.
	self
		assert: object color = Color yellow;
		deny: (property value: nil value: false) = Color yellow. "Still not updated."