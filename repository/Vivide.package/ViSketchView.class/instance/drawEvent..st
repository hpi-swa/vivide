as yet unclassified
drawEvent: anEvent

	self checkForNewFormSize.

	canvas
		translateBy: self topLeft negated
		during: [:c | c line: anEvent startPoint to: anEvent endPoint width: 2 color: Color yellow].
	self redrawLater.