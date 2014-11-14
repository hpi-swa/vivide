as yet unclassified
test04OpenAllScriptParts

	| script wnd pane |
	script := {
		[:n | n * n].
		[:n | n + n].
	} asScript.

	self assert: 2 equals: script allSteps size.

	wnd := #foobar explore. "some object"
	pane := wnd editor inputPane.
	
	pane view openArtifact: script.
	
	self assert: script allSteps size equals: pane objects size - 1.