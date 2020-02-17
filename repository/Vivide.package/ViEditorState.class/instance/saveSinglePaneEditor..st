as yet unclassified
saveSinglePaneEditor: editor

	"Save self-contained pane state."
	editor pane ifNotNil: [:pane |
		pane saveState: self newState.
		pane script ifNotNil: [:script |
			self properties at: #icon put: script nextIcon]].