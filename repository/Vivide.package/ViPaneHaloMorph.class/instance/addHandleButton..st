as yet unclassified
addHandleButton: spec

	| btn |
	btn := self createHandleButton: spec.
	self addMorph: btn.
	^ btn