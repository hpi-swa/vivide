private
iconFor: anObject

	^ (ViIconService doObject: anObject) ifNil: [ViIcons blankIcon]