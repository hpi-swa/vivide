as yet unclassified
createLockBox

	| box |
	box := self createBox: (UiDiagonaIcons icon0215Small asWireframeSunken clippedToSize: 16@16).
	self connect: box signal: #clicked: toSelector: #toggleLockWindow.
	box balloonText: 'Lock window' translated.
	^ box