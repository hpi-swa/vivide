as yet unclassified
transferHalo: event toPane: pane
	"Cycle through my panes only."
	
	self assert: (self panes includes: pane).

	^ self panes at: ((self panes indexOf: pane) \\ self panes size) + 1