tests - advanced extraction
test02ExtractPropertyAsWriteBlock

	| script object model |
	script := [:morph | 
		#color 
			-> morph color
			<- [:newColor | morph color: newColor]] asScript.
	object := Morph new.
	model := script interpretScriptWith: {object}.
	
	self assert: (model firstNode at: #color) isColor.
	
	"Modify the domain object through the property (block). Check whether the change was propagated to the domain object."
	self
		deny: object color = Color yellow;
		deny: (model firstNode at: #color) = Color yellow.
	"model firstNode at: #color put: Color yellow. -- not working"
	model firstNode color: Color yellow.
	self
		assert: object color = Color yellow;
		deny: (model firstNode at: #color) = Color yellow. "Still not updated."