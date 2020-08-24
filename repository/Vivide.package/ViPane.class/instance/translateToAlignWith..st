decorations
translateToAlignWith: pane

	| delta |
	self decoration window hasDropShadow: false.
	pane decoration window hasDropShadow: false.

	delta := self topLeft - self fullBounds topLeft.
	self topLeft: pane fullBounds topRight + delta.

	self fullBounds right > self owner right
		ifTrue: [
			"Add new row."
			self left: 0 + delta x.
			self top: self top + (100 * RealEstateAgent scaleFactor)].