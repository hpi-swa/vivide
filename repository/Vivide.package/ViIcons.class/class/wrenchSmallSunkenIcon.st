accessing
wrenchSmallSunkenIcon

	^ Icons
		at: #wrenchSmallSunkenIcon
		ifAbsentPut:[(UiSilkIcons bulletWrenchIcon clippedToSize: 12@12) asWireframeSunken].