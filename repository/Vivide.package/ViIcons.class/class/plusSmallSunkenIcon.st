random-accessing
plusSmallSunkenIcon

	^ Icons
		at: #plusSmallSunkenIcon
		ifAbsentPut:[(UiFugueIcons plusSmallIcon clippedToSize: 12@12) asWireframeSunken].