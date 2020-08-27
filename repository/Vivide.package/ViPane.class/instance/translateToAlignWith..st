decorations
translateToAlignWith: pane

	| delta |
	self decoration window hasDropShadow: false.
	delta := self topLeft - self fullBounds topLeft.

	(pane isNil or: [pane owner ~~ self owner])
		ifTrue: [^ self topLeft: self owner topLeft + delta].

	pane decoration window hasDropShadow: false.
	self topLeft: pane fullBounds topRight + delta.

	self fullBounds right > self owner right
		ifTrue: [
			"Add new row."
			self left: self owner left + delta x.
			self top: self top + (100 * RealEstateAgent scaleFactor)].