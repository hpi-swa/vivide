drawing
expandFullBoundsForDropShadow: aRectangle

	self flag: #smell. "mt: Does not expand box but overrides it."
	^ ((Rectangle center: self bounds center extent: self dropShadow extent + (10@10))
		"translateBy: self shadowOffset")
		quickMerge: aRectangle