tests
test14Process

	| script |
	script := [:num | num * 2] asScript.
	
	self assert: #(2 4 6) equals: (script process: #(1 2 3)) asArray.