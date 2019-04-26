tests
test05MaxPropertyCount

	| default script |
	default := { [:object | #text -> ('test ', object asString)] -> { #id -> #defaultProperties }} asScript.
	
	ViActiveScriptOrganizer value: default organization during: [
		
		self
			assert: #defaultProperties asScript == default;
			assert: default steps size equals: default maxPropertyCount;
			assert: default steps size equals: [#(1 2 3 4 5)] asScript maxPropertyCount.
			
		script := {
			[:ea | ea * ea].
			[:o | #text -> o asString]
		} asScript.
		
		self assert: 1 equals: script maxPropertyCount.
		script steps last next: script asReference. "Recursion."
		self assert: 1 equals: script maxPropertyCount.
	
		"chaining of nested properties"
		script := {
			[:ea | ea * ea].
			#defaultProperties.
			[:o | #text -> o class name].
		} asScript.
		
		self
			assert: script next isReference;
			assert: script next reference == default;
			assert: 2 equals: script maxPropertyCount.
			
		script next next: nil.
		self assert: 1 equals: script maxPropertyCount.

	].