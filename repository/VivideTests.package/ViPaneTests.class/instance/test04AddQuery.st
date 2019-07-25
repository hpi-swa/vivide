tests
test04AddQuery

	| prev |
	sut
		script: [:num | num * num] asScript;
		objects: #(1 2 3).
	
	prev := sut script.
	sut addQuery.
	
	self
		assert: sut script ~~ prev;
		deny: (sut knownScripts includes: sut script).