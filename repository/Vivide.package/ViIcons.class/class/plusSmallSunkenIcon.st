accessing
plusSmallSunkenIcon

	^ Icons
		at: #plusSmallSunkenIcon
		ifAbsentPut:[(UiFugueIcons plusSmallIcon clippedTo: 12@12) asWireframeSunken].