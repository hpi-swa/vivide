tests
test11ExtractPropertiesOverloaded

	| script interpreter |
	script := {
		[:num | #text -> num asString].
		[:num | #text -> num class name].
	} asScript.
	interpreter := ViScriptInterpreter on: script using: #(2 3).
	interpreter upToExtraction.

	"The regular property will be the *last* value stored without the prefix."
	self
		assert: 2 equals: ((interpreter propertiesFor: 2) at: #object); "Auto fill. See templates."
		assert: 'SmallInteger' equals: ((interpreter propertiesFor: 2) at: #text);
		assert: 3 equals: ((interpreter propertiesFor: 3) at: #object); "Auto fill. See templates."
		assert: 'SmallInteger' equals: ((interpreter propertiesFor: 3) at: #text).
		
	"Test property overload for table columns."
	self
		assert: 2 equals: ((interpreter propertiesFor: 2) at: #'1_object');
		assert: '2' equals: ((interpreter propertiesFor: 2) at: #'1_text');
		assert: 3 equals: ((interpreter propertiesFor: 3) at: #'1_object');
		assert: '3' equals: ((interpreter propertiesFor: 3) at: #'1_text').
	self
		assert: 2 equals: ((interpreter propertiesFor: 2) at: #'2_object'); "Auto fill. See templates."
		assert: 'SmallInteger' equals: ((interpreter propertiesFor: 2) at: #'2_text');
		assert: 3 equals: ((interpreter propertiesFor: 3) at: #'2_object'); "Auto fill. See templates."
		assert: 'SmallInteger' equals: ((interpreter propertiesFor: 3) at: #'2_text').