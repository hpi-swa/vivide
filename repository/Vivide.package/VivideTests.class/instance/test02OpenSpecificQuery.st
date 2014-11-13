tests
test02OpenSpecificQuery

	| wnd pane |
	wnd := #senders openScriptWith: #(drawOn:).
	pane := wnd editor inputPane.

	self assert: pane currentQuery == #senders asScript.