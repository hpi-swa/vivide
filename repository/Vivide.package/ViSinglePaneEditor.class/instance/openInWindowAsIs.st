as yet unclassified
openInWindowAsIs

	| wnd |
	wnd := self
		openInWindowBounds: (self bounds translatedToBeWithin: RealEstateAgent maximumUsableArea)
		grab: false.

	VivideLight useClassicMode
		ifFalse: [wnd appendHeaderButtons: {self ui addPaneBtn}].
	
	^ wnd