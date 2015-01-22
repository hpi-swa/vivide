actions
fullScreen
	"Maximize to column-like window, i.e., maximized on the vertical axis and optimized on the horizontal axis."

	(RealEstateAgent maximumUsableAreaInWorld: self world) in: [:maxBounds |
		self bounds: ((self topLeft
			extent: (model optimalWidth + self borderWidth + self borderWidth) @ ((model optimalHeight + self borderWidth + self borderWidth + self labelHeight) min: maxBounds height))
			translatedToBeWithin: maxBounds)].