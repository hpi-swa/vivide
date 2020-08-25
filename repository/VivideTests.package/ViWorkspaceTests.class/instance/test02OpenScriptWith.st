tests - open
test02OpenScriptWith

	| script pane |
	script := [:num | num + num] asScript.
	pane := script openScriptWith: #(1 2 3).

	self
		assert: script equals: pane script;
		assert: #(2 4 6) equals: pane allResults.