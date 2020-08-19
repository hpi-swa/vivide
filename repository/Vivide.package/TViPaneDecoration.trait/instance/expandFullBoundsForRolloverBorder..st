drawing
expandFullBoundsForRolloverBorder: aRectangle
	"Our rollover border is composed of a layout outset and an outer-border width."
	
	| box |
	box := aRectangle.
	self layoutOutset ifNotNil: [:delta | box := box outsetBy: delta].
	self outerBorderWidth ifNotNil: [:delta | box := box outsetBy: delta].
	^ box