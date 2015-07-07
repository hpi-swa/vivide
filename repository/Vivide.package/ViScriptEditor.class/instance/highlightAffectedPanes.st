as yet unclassified
highlightAffectedPanes

	self object ifNil: [^ self].
	VivideLight active ifNil: [^ self].

	self discardPaneHighlights.

	(VivideLight active panes
		select: [:pane | (pane currentQuery ifNil: #() ifNotNil: #allSteps) includes: self object])
		select: [:pane | pane currentQuery isMeta not or: [self object isMeta]]
		thenDo: [:pane | self highlights add: (ViPaneHighlight on: pane)].
	
	(self firstOwnerSuchThat: [:morph | morph isSystemWindow])
		ifNotNil: #comeToFront.
	self showToolbar.