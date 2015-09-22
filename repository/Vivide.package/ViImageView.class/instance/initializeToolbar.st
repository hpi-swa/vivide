as yet unclassified
initializeToolbar

	super initializeToolbar.
	(self submorphs last submorphNamed: #zoomFit)
		text: '1:1'.