as yet unclassified
withAllPanesDo: block

	block value: self.
	(self view isKindOf: ViMultiPaneWidget) ifTrue: [
		self view panes do: [:pane |
			pane withAllPanesDo: block]].