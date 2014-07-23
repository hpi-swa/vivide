initialization
createCloseBox

	| box |
	box := self createBox: self class closeBoxImage.
	self connect: box signal: #clicked: toSelector: #closeBoxHit.
	box balloonText: 'close this window' translated.
	^ box