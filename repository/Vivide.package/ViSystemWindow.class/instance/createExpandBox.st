initialization
createExpandBox

	| box |
	box := self createBox: self class expandBoxImage.
	self connect: box signal: #clicked: toSelector: #expandBoxHit.
	box balloonText: 'expand this window' translated.
	^ box