as yet unclassified
outerLayoutBounds

	| box |
	box := self bounds.
	box := box outsetBy: self layoutOutset.
	box := box outsetBy: self outerBorderWidth.
	^ box