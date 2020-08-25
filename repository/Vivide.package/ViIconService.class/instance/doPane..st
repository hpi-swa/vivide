vivide - kernel
doPane: aPane

	^ aPane script
		ifNotNil: [UiFugueIcons zoneIcon]
		ifNil: [UiFugueIcons zoneExclamationIcon]