tests
test03InterpretScriptSteps
	"Test basic object transformation and property extraction."
	
	| interpreter step |
	step := {
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	interpreter := ViScriptInterpreter on: step using: #(1 2 3).
	
	interpreter doNext.
	self assert: #(1 4 9) equals: interpreter objects asArray.
	
	interpreter doNext.
	self
		assert: #(1 4 9) equals: interpreter objects asArray;
		assert: interpreter next isNil;
		assert: interpreter atEnd;
		assert: '1' equals: ((interpreter propertiesFor: 1) at: #text);
		assert: '4' equals: ((interpreter propertiesFor: 4) at: #text);
		assert: '9' equals: ((interpreter propertiesFor: 9) at: #text);
		assert: (interpreter propertiesFor: 0) isNil.