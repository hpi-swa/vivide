initialization
createMenuBox

	| box |
	box := self createBox: self class menuBoxImage.
	self connect: box signal: #clicked: toSelector: #offerWindowMenu.
	box balloonText: 'window menu' translated.
	^ box