initialization
adoptPaneColor: color

	super adoptPaneColor: color.

	self resizeHandle color: color.
	self color: color.