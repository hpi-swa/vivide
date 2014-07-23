accessing
focusedTape

	^ self tapes detect: [:tape | tape hasAnyKeyboard] ifNone: [
		self tapes ifEmpty: [] ifNotEmpty: [:t | t last]]