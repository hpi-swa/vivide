tests
test04OpenAllScriptParts

	| script wnd pane |
	script := {
		[:n | n * n].
		[:n | n + n].
	} asScript.

	self assert: 2 equals: script allSteps size.

	wnd := #artifacts openScriptWith: #(foobar). "some object"
	pane := wnd editor pane.
	
	pane view openArtifact: script.
	
	self assert: script allSteps size equals: pane objects size - 1.