as yet unclassified
openInWindowAsIs

	| wnd |
	wnd := self
		openInWindowBounds: self bounds
		grab: false.
		   	
	wnd appendHeaderButtons: {self ui addPaneBtn}.
	
	^ wnd