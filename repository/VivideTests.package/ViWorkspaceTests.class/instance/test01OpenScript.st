tests - open
test01OpenScript

	| script pane |
	script := [#(1 2 3)] asScript.
	pane := script openScript.

	self
		assert: script equals: pane script;
		assert: #(1 2 3) equals: pane allResults.