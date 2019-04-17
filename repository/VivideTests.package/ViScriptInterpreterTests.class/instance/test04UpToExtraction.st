tests
test04UpToExtraction

	| script interpreter |
	script := {
		[:number | number * number].
		[:number | #text -> (number asString, 'px')].
		[:number | number * number].
		[:number | #text -> (number asString, 'pt')] 
	} asScript.
	
	interpreter := ViScriptInterpreter on: script using: #(1 2 3 4).
	
	interpreter upToExtraction.
	self
		assert: (#(1 4 9 16) hasEqualElements: interpreter objects);
		assert: '16px' equals: ((interpreter propertiesFor: 16) at: #text).

	interpreter upToExtraction.
	self
		assert: (#(1 16 81 256) hasEqualElements: interpreter objects);
		assert: '16pt' equals: ((interpreter propertiesFor: 16) at: #text);
		assert: '256pt' equals: ((interpreter propertiesFor: 256) at: #text);
		assert: (interpreter propertiesFor: 4) isNil. "Got cleaned up."