as yet unclassified
resizeBoxHit
	"Maximize to column-like window, i.e., maximized on the vertical axis and optimized on the horizontal axis."

	| target maxBounds |
	target := self pane.
	maxBounds := (target owner ifNil: [Project current world]) visibleClearArea.
	
	self flag: #todo. "mt: What about the needs of the pane's other decorations?"
	maxBounds := maxBounds insetBy: self outerBorderWidth.
	maxBounds := maxBounds insetBy: self layoutOutset.	
	
	target fullBounds.
	target width: (target optimalWidth min: maxBounds width).	
	target fullBounds.
	target height: (target optimalHeight min: maxBounds height).	
	
	target bounds: (target bounds translatedToBeWithin: maxBounds).