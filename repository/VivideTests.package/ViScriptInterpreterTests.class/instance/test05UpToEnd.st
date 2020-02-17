tests
test05UpToEnd

	| script interpreter |
	script := {
		[:number | number * number].
		[:number | #text -> (number asString, 'px')].
		[:number | number even ifTrue: [number * number] ifFalse: ["Skip."]].
		[:number | #text -> (number asString, 'pt')] 
	} asScript.
	
	interpreter := ViScriptInterpreter on: script using: #(1 2 3 4).
	interpreter upToEnd.

	self
		assert: interpreter atEnd;
		assert: interpreter next isNil;
		assert: (#(16 256) hasEqualElements: interpreter objects);
		assert: '16pt' equals: ((interpreter propertiesFor: 16) at: #text);
		assert: '16pt' equals: ((interpreter propertiesFor: 16) at: #'1_text');		
		assert: (interpreter propertiesFor: 4) isNil. "Got cleaned up."