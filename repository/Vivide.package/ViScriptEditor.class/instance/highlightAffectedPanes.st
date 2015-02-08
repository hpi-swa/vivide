as yet unclassified
highlightAffectedPanes

	self object ifNil: [^ self].

	self discardPaneHighlights.

	VivideLight active panes
		select: [:pane | pane currentQuery allSteps includes: self object]
		thenDo: [:pane |self highlights add: (ViPaneHighlight on: pane)].