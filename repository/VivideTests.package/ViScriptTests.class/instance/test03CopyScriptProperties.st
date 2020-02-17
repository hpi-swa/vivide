tests - copying & serialization
test03CopyScriptProperties

	| script copy |
	script := {
		[:num | num * num] -> {
			#color -> #blue.
			#item -> Object new }
	} asScript.
	copy := script copy.
	copy setProperty: #color toValue: #yellow. 
	
	self
		assert: (script valueOfProperty: #item) == (copy valueOfProperty: #item);
		assert: #blue equals: (script valueOfProperty: #color);
		assert: #yellow equals: (copy valueOfProperty: #color).