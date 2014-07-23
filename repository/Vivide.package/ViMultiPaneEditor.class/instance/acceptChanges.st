memento - data
acceptChanges

	super acceptChanges.
	
	self panes do: [:pane | pane acceptChanges].