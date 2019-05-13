tests
test11InputForChildrenObjects

	| script model |
	script := [:num | 
		#object -> num.
		#objects -> {num. num + 1}] asScript.
	model := script interpretScriptWith: #(2).
	
	self assert: #(2 3) equals: model firstNode inputForChildren.