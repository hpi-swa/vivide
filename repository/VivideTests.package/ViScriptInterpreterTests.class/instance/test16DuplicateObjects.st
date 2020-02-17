tests
test16DuplicateObjects

	| script closure interpreter counter |
	counter := 4.
	closure := [:in :out | out addAll: (in collect: [:number | { #counter -> (counter := counter - 1). #object -> number } ])].
	script := closure decompile decompileString asScript.
	script setProperty: #isProperty toValue: true. 
	script definition block: closure. "Test only!"
	
	interpreter := ViScriptInterpreter on: script using: #(1 1 1 1).
	interpreter upToExtraction.
	
	self
		assert: 1 equals: ((interpreter propertiesFor: 1) at: #object);
		assert: 3 equals: ((interpreter propertiesFor: 1) at: #counter); "Only the first occurrence?"
		assert: #(1 1 1 1) equals: interpreter objects asArray; "All objects are there hmm."
		assert: #(3 2 1 0) equals: (interpreter properties first flatten select: [:ea | ea key = #counter] thenCollect: [:ea | ea value]).