as yet unclassified
adoptPaneColor: paneColor

	self color: paneColor.
	self window ifNotNil: [:wnd |
		wnd isSticky ifTrue: [super adoptPaneColor: paneColor]].