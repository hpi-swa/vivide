tests - general patterns
test04ScriptProperties

	| script |
	script := { [:object | object] -> { #one -> Color blue. #two -> 100 } } asScript.
	
	self
		assert: Color blue equals: (script valueOfProperty: #one);
		assert: 100 equals: (script valueOfProperty: #two).