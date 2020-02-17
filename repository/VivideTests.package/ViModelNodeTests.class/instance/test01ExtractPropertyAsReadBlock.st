tests - advanced extraction
test01ExtractPropertyAsReadBlock

	| script object model |
	script := [:morph | #color -> [morph color]] asScript.
	object := Morph new.
	model := script interpretScriptWith: {object}.
	
	self assert: (model firstNode at: #color) isColor.
	
	"Modify the domain object directly. Check whether the extracted property can produce the correct value."
	self deny: Color yellow equals: (model firstNode at: #color).
	object color: Color yellow.
	self assert: Color yellow equals: (model firstNode at: #color).