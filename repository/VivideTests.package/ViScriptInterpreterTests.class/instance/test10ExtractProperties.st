tests
test10ExtractProperties

	| script interpreter |
	script := [:num | #text -> num asString. #even -> num even] asScript.
	interpreter := ViScriptInterpreter on: script using: #(2 3).
	interpreter upToExtraction.

	self
		assert: 2 equals: ((interpreter propertiesFor: 2) at: #object);
		assert: '2' equals: ((interpreter propertiesFor: 2) at: #text);
		assert: true equals: ((interpreter propertiesFor: 2) at: #even);
		assert: 3 equals: ((interpreter propertiesFor: 3) at: #object);
		assert: '3' equals: ((interpreter propertiesFor: 3) at: #text);
		assert: false equals: ((interpreter propertiesFor: 3) at: #even).
		
	"Test (trivial) property overload for table columns."
	self
		assert: 2 equals: ((interpreter propertiesFor: 2) at: #'1_object');
		assert: '2' equals: ((interpreter propertiesFor: 2) at: #'1_text');
		assert: true equals: ((interpreter propertiesFor: 2) at: #'1_even');
		assert: 3 equals: ((interpreter propertiesFor: 3) at: #'1_object');
		assert: '3' equals: ((interpreter propertiesFor: 3) at: #'1_text');
		assert: false equals: ((interpreter propertiesFor: 3) at: #'1_even').