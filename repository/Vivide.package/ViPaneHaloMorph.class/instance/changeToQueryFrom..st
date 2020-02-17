actions
changeToQueryFrom: button

	| script pane |
	script := button valueOfProperty: #query.
	pane := self target.
	pane script: script.
	self delete.