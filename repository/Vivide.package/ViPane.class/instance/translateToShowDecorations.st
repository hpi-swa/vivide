decorations
translateToShowDecorations
	"Note that visible pane decorations are included in the pane's fullBounds."

	| inset visibleArea |
	self owner ifNil: [^ self].
	self flag: #todo. "Maybe not all decorations?"
	visibleArea := self owner bounds.
	inset := (self left - self fullBounds left) @ (self top - self fullBounds top)
		corner: (self fullBounds right - self right) @ (self fullBounds bottom - self bottom).
	self bounds: (self bounds translatedToBeWithin: (visibleArea insetBy: inset)).