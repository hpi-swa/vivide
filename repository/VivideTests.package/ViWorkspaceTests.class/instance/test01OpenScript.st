tests - open
test01OpenScript

	| script window pane |
	script := [#(1 2 3)] asScript.
	window := script openScript.
	pane := window pane.

	self
		assert: script equals: pane script;
		assert: #(1 2 3) equals: pane allResults.