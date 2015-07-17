as yet unclassified
adoptPaneColor: aColor

	self submorphsDo: [:m | m color: aColor].
	super adoptPaneColor: aColor.