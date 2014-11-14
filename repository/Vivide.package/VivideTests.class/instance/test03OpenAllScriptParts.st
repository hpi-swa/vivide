as yet unclassified
test03OpenAllScriptParts

	| script wnd pane |
	script := {
		[:n | n * n].
		[:n | n + n].
	} asScript.

	self assert: 2 equals: script allSteps size.

	wnd := script explore.
	pane := wnd editor inputPane.
	
	self assert: script allSteps size equals: pane objects size.