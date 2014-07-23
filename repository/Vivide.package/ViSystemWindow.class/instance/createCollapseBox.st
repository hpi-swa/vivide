initialization
createCollapseBox

	| box |
	box := self createBox: self class collapseBoxImage.
	self connect: box signal: #clicked: toSelector: #collapseOrExpand.
	box balloonText: 'collapse this window' translated.
	^ box