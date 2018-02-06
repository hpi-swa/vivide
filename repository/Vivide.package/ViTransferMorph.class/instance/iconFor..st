private
iconFor: anObject

	^ ((ViIconService doObject: anObject) ifNil: [ViIcons blankIcon]) scaledToSize: 16@16