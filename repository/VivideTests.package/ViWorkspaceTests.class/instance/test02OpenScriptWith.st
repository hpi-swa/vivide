tests - open
test02OpenScriptWith

	| script window pane |
	script := [:num | num + num] asScript.
	window := script openScriptWith: #(1 2 3).
	pane := window pane.

	self
		assert: script equals: pane script;
		assert: #(2 4 6) equals: pane allResults.