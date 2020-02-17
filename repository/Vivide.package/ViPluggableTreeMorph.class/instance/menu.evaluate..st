as yet unclassified
menu: menu evaluate: boolean

	self currentSelection ifNotNil: [:node |
		 self pane chooseAndOpenScriptWith: (node at: #object)].
	^ nil