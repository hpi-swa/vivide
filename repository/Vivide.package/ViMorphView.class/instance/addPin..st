as yet unclassified
addPin: evt

	| newPin targetPoint |
	(lastPoints isNil or: [evt shiftPressed not])
		ifTrue: [
			self container removeAllMorphsIn: self container submorphs allButLast.
			lastPoints := OrderedCollection new].

	targetPoint := (evt position / self container owner scale) rounded.
		
	lastPoints add: (targetPoint min: self container extent) / self container extent.

	newPin := (pin atWrap: lastPoints size) asMorph.
	newPin position: targetPoint - newPin extent + pinOffset.
	self container addMorphFront: newPin.

	self yield: (lastPoints collect: [:ea | Dictionary newFrom: {#object -> ea}]).