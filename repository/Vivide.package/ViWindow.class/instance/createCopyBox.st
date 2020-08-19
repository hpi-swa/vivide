as yet unclassified
createCopyBox

	| box |
	box := self createBox: ViIcons icons8Copy64px1Icon scaledToDisplay.
	self connect: box signal: #clicked: toSelector: #copyBoxHit.
	box balloonText: 'duplicate this window' translated.
	^ box