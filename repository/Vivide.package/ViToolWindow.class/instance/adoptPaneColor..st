as yet unclassified
adoptPaneColor: aColor
	super adoptPaneColor: aColor.
	
	self headerButtons do: [:ea |
		ea color: aColor].
	
	self editor ifNotNil: [:ed | ed adoptPaneColor: aColor].