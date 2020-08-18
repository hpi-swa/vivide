as yet unclassified
outerBounds

	| box |
	box := super outerBounds.
	box := box outsetBy: self layoutOutset.
	box := box outsetBy: self outerBorderWidth.
	^ box