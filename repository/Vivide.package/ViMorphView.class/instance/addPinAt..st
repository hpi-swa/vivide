as yet unclassified
addPinAt: relativePoint

	| newPin |
	relativePoint isPoint ifFalse: [^ self].
	lastPoints ifNil: [lastPoints := OrderedCollection new].
	lastPoints add: relativePoint.

	newPin := (pin atWrap: lastPoints size) asMorph.
	newPin position: (relativePoint * self container extent) - newPin extent + pinOffset.
	self container addMorphFront: newPin.