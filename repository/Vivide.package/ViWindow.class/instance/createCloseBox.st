as yet unclassified
createCloseBox

	| box |
	box := self createBox: ViIcons icons8Delete64px1Icon scaledToDisplay.
	self connect: box signal: #clicked: toSelector: #closeBoxHit.
	box balloonText: 'close this window' translated.
	^ box