as yet unclassified
resizeBoxHit
	"Maximize to column-like window, i.e., maximized on the vertical axis and optimized on the horizontal axis."

	| target maxBounds |
	target := self pane.
	maxBounds := target owner visibleClearArea.
	
	self flag: #todo. "mt: What about the needs of the pane's other decorations?"
	maxBounds := maxBounds insetBy: self outerBorderWidth.
	maxBounds := maxBounds insetBy: self layoutOutset.	
	
	target bounds: ((target topLeft
		extent: (target optimalWidth min: maxBounds width)
			@ (target optimalHeight min: maxBounds height))
		translatedToBeWithin: maxBounds).