as yet unclassified
openInWindowAsIs

	| wnd |
	wnd := self
		openInWindowBounds: self bounds
		grab: false.

	VivideLight useClassicMode
		ifFalse: [wnd appendHeaderButtons: {self ui addPaneBtn}].
	
	^ wnd