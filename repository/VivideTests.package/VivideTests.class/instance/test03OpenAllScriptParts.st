tests
test03OpenAllScriptParts

	| script wnd pane |
	script := {
		[:n | n * n].
		[:n | n + n].
	} asScript.

	self assert: 2 equals: script allSteps size.

	wnd := #artifacts openScriptWith: {script}.
	pane := wnd editor pane.
	
	self assert: script allSteps size equals: pane objects size.