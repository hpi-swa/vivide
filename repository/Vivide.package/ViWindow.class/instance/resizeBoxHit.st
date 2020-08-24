as yet unclassified
resizeBoxHit
	"Maximize to column-like window, i.e., maximized on the vertical axis and optimized on the horizontal axis."

	| target maxBounds |
	target := self pane.
	target width: 700 * RealEstateAgent scaleFactor. "Increase width to reduce height in height-for-width layouts."
	maxBounds := (target owner ifNil: [Project current world]) visibleClearArea.
	
	self flag: #todo. "mt: What about the needs of the pane's other decorations?"
	maxBounds := maxBounds insetBy: self outerBorderWidth.
	maxBounds := maxBounds insetBy: self layoutOutset.	
	
	target fullBounds. "Do layout."
	target bounds: ((target topLeft
		extent: (target optimalWidth min: maxBounds width)
			@ (target optimalHeight min: maxBounds height))
		translatedToBeWithin: maxBounds).