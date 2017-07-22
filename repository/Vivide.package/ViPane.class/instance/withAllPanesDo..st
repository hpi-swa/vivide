as yet unclassified
withAllPanesDo: block

	block value: self.
	(self view respondsTo: #panes) "isKindOf: ViMultiPaneWidget" ifTrue: [
		self view panes do: [:pane |
			pane withAllPanesDo: block]].