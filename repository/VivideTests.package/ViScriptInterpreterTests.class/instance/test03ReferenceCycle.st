tests - references and stack
test03ReferenceCycle

	| script interpreter |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		1.
	} asScript.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).
	
	self
		assert: interpreter stack isEmpty;
		assert: script equals: interpreter next;
		deny: interpreter atEnd.

	interpreter upToExtraction; doNext.
	self
		assert: 1 equals: interpreter stack size;
		deny: interpreter atEnd.

	interpreter upToExtraction; doNext.
	self
		assert: 1+1 equals: interpreter stack size;
		deny: interpreter atEnd.		

	3 timesRepeat: [interpreter upToExtraction; doNext].
	self
		assert: 1+1+3 equals: interpreter stack size;
		deny: interpreter atEnd;
		assert: #(1 4294967296 1853020188851841) equals: interpreter objects asArray.	