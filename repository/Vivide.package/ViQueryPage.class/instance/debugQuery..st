actions
debugQuery: aQuery

	self flag: #testOnly. "mt: Smelly..."
	self editor ifNil: [^ self "for tests"].

	self flag: #badStyle. "mt: Find a better way to let editors decide whether to open associated objects or not."	
	self objects asOrderedCollection explore in: [:wnd | 
		wnd height: self editor window height.
		wnd editor inputPage in: [:page |
			"Resize the view for the input objects. It is too big by default."
			page artifactContainers first artifact height: 50.
			"Open all steps of this query."
			(page addObject: aQuery) openNextSteps].
		wnd width: wnd editor optimalWidth + 20 "window frame?".
		
		"The new window will be too far away of there are windows attached."
		self editor rightWindow ifNotNil: [
			wnd topLeft: self editor window bottomLeft]].