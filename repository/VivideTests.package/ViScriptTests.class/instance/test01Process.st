tests - interpretation
test01Process

	| script |
	script := [:num | num * num] asScript.
	self assert: #(1 4 9 16) equals: (script process: #(1 2 3 4)) asArray.