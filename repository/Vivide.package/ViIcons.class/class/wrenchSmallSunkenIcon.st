accessing
wrenchSmallSunkenIcon

	^ Icons
		at: #wrenchSmallSunkenIcon
		ifAbsentPut:[(UiSilkIcons bulletWrenchIcon clippedTo: 12@12) asWireframeSunken].