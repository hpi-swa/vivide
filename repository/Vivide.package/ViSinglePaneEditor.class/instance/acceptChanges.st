memento - data
acceptChanges

	super acceptChanges.
	self pane ifNotNil: [:p | p acceptChanges].