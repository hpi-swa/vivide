tests
test02OpenSpecificQuery

	| wnd pane |
	wnd := #senders openScriptWith: #(drawOn:).
	pane := wnd editor pane.

	self assert: pane script == #senders asScript.