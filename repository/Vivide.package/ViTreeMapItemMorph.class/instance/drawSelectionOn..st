as yet unclassified
drawSelectionOn: aCanvas

	self selected ifFalse: [^ self].

	"outer"
	aCanvas
		frameRoundRect: ((self bounds insetBy: 2) translateBy: (0@ self elevation negated))
		radius: self preferredCornerRadius
		width: 2
		color: (self color adjustBrightness: -0.25).
	
	"inner"
	aCanvas
		frameRoundRect: ((self bounds insetBy: 5) translateBy: (0@ self elevation negated))
		radius: self preferredCornerRadius
		width: 3
		color: ((self color adjustBrightness: -0.25) alpha: 0.5).
	aCanvas
		frameRoundRect: ((self bounds insetBy: 4) translateBy: (0@ self elevation negated))
		radius: self preferredCornerRadius
		width: 3
		color: (self color adjustBrightness: -0.25).

	"base"
	aCanvas
		frameRoundRect: ((self bounds insetBy: 3) translateBy: (0@ self elevation negated))
		radius: self preferredCornerRadius
		width: 3
		color: (self selectionColor adjustBrightness: -0.1).

	"middle/highlight"
	aCanvas
		frameRoundRect: ((self bounds insetBy: 4) translateBy: (0@ self elevation negated))
		radius: self preferredCornerRadius
		width: 1
		color: self selectionColor.

