tests
test12ExtractPropertiesOverloadedWithReference

	| inner outer interpreter |
	inner := {
		[:num | num * num].
		[:num | #text -> num sqrt asString]
	} asScript.
	outer := inner asReference.
	outer adoptOrganization: inner organization.
	outer next: ([:num | #text -> num asString] asScript
					adoptOrganization: outer organization;
					yourself).
	
	interpreter := ViScriptInterpreter on: outer using: #(2 4).
	interpreter upToExtraction.
		
	"Test property overload for table columns."
	self
		assert: 4 equals: ((interpreter propertiesFor: 4) at: #'1_object');
		assert: '2' equals: ((interpreter propertiesFor: 4) at: #'1_text');
		assert: 16 equals: ((interpreter propertiesFor: 16) at: #'1_object');
		assert: '4' equals: ((interpreter propertiesFor: 16) at: #'1_text').
	self
		assert: 4 equals: ((interpreter propertiesFor: 4) at: #'2_object'); 
		assert: '4' equals: ((interpreter propertiesFor: 4) at: #'2_text');
		assert: 16 equals: ((interpreter propertiesFor: 16) at: #'2_object');
		assert: '16' equals: ((interpreter propertiesFor: 16) at: #'2_text').