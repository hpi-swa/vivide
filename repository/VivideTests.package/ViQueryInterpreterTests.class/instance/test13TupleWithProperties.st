tests
test13TupleWithProperties

	| q |
	q := {
		[:num | {num. num even} asTuples]
			-> {#inputKind -> Integer. #outputKind -> {Integer. Boolean}}.
		[:num :even | {
			#text -> num asString.
			#icon -> (even
				ifTrue: [UiFugueIcons tickSmallIcon]
				ifFalse: [UiFugueIcons crossSmallIcon])}] 
			-> {#inputKind -> {Integer.Boolean}}.
	} asScript.
	sut := ViQueryInterpreter on: (ViQueryStep use: #(1 2 3 4) in: q).
	sut upToNextProperties.

	self
		assert: (sut allObjects hasEqualElements: #((1 false)(2 true)(3 false)(4 true)));
		assert: '1' equals: ((sut propertiesFor: #(1 false)) at: #text);
		assert: 1 equals: ((sut propertiesFor: #(1 false)) at: #object);		
		assert: #(1 false) equals: ((sut propertiesFor: #(1 false)) at: #objects).