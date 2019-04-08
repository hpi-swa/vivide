pane highlights
addPaneHighlights
	
	self removePaneHighlights.
	
	VivideLight active ifNil: [^ self].
	self object ifNil: [^ self].

	self flag: #metaScript.
	self setProperty: #paneHighlights toValue: (((VivideLight active panes
		select: [:pane | (pane currentQuery ifNil: #() ifNotNil: #allSteps) includes: self object])
		select: [:pane | pane currentQuery isMeta not or: [self object isMeta]])
		collect: [:pane | ViPaneHighlight on: pane]).
	
	"Fix GUI-related stuff."
	(self firstOwnerSuchThat: [:morph | morph isSystemWindow])
		ifNotNil: #comeToFront.
	self showToolbar.