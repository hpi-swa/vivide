tests
test01Start

	| interpreter script |
	script := [:num | num * num] asScript.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).
	
	self
		assert: #(1 2 3) equals: interpreter objects;
		assert: interpreter properties isEmpty;
		assert: script equals: interpreter next.