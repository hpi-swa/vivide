tests
test19FailedExtraction
	"If the user does not extract properties in the script part, the script interpreter has to do it automatically."
	
	| script interpreter |
	script := [:num | num * num] asScript.
	script isProperty: true. "So ... we *claim* to extract properties ... well ..."
	
	interpreter := ViScriptInterpreter on: script using: #(2 3).

	self
		deny: interpreter hasProperties;
		assert: interpreter hasObjects.

	interpreter doNext.

	self
		assert: interpreter hasProperties;
		assert: interpreter hasObjects.

	self		
		assert: 4 equals: ((interpreter propertiesFor: 4) at: #object);
		deny: ((interpreter propertiesFor: 4) includesKey: #text);
		assert: 4 equals: ((interpreter propertiesFor: 4) at: #'1_object').
		
	self		
		assert: 9 equals: ((interpreter propertiesFor: 9) at: #object);
		deny: ((interpreter propertiesFor: 9) includesKey: #text);
		assert: 9 equals: ((interpreter propertiesFor: 9) at: #'1_object').