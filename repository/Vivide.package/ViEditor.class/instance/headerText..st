accessing - header
headerText: aText

	self ui headerBtn text: aText.
	
	self owner isSystemWindow ifTrue: [
		self owner setLabel: aText asString].