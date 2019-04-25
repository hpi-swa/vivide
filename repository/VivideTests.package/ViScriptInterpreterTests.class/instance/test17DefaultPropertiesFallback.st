tests
test17DefaultPropertiesFallback
	"If there is no #defaultProperties script, just use #printString from Object."

	| script interpreter |
	self assert: #defaultProperties asScript isNil.
	
	script := [:num | num * num] asScript.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).

	interpreter upToExtraction. "So... do we get some extracted properties at all?"
	self
		assert: interpreter atEnd;
		assert: '1' equals: ((interpreter propertiesFor: 1) at: #text);
		assert: true equals: ((interpreter propertiesFor: 1) at: #'_simulated');		
		assert: 1 equals: ((interpreter propertiesFor: 1) at: #object);
		assert: '4' equals: ((interpreter propertiesFor: 4) at: #text);
		assert: true equals: ((interpreter propertiesFor: 4) at: #'_simulated');		
		assert: 4 equals: ((interpreter propertiesFor: 4) at: #object);
		assert: '9' equals: ((interpreter propertiesFor: 9) at: #text);
		assert: true equals: ((interpreter propertiesFor: 9) at: #'_simulated');		
		assert: 9 equals: ((interpreter propertiesFor: 9) at: #object).