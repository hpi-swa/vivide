as yet unclassified
createResizeBox

	| box |
	box := self createBox: ViIcons icons8ResizeVertical64px1Icon scaledToDisplay.
	self connect: box signal: #clicked: toSelector: #resizeBoxHit.
	box balloonText: 'expand this window' translated.
	^ box