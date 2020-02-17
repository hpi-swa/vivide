tests - advanced extraction
test01ExtractPropertyAsReadBlock

	| script object property interpreter |
	script := [:morph | #color -> [morph color]] asScript.
	object := Morph new.
	interpreter := ViScriptInterpreter on: script using: {object}.
	interpreter upToExtraction.
	
	property := (interpreter propertiesFor: object) at: #color.
	self assert: property isBlock.
	
	"Modify the domain object directly. Check whether the extracted property can produce the correct value."
	self deny: property value = Color yellow.
	object color: Color yellow.
	self assert: property value = Color yellow.