as yet unclassified
adoptPaneColor: aColor
	super adoptPaneColor: aColor.
	self editor ifNotNil: [:ed | ed adoptPaneColor: aColor].