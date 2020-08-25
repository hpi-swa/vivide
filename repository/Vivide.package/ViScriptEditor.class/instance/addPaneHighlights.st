pane highlights
addPaneHighlights
	
	self removePaneHighlights.
	
	VivideLight active ifNil: [^ self].
	self object ifNil: [^ self].

	self
		setProperty: #paneHighlights
		toValue: (VivideLight active panes
			select: [:pane | (pane script ifNil: #() ifNotNil: #allSteps) includes: self thisStep]
			thenCollect: [:pane | ViPaneHighlight on: pane]).
	
	"Fix GUI-related stuff."
	self showToolbar.