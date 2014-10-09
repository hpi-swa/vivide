handles - construction
addHandleButton: spec

	| btn |
	btn := self createHandleButton: spec.
	self addMorph: btn.
	^ btn