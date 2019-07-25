vivide - kernel
doPane: aPane

	^ (aPane view isKindOf: ViMultiPaneWidget)
		ifFalse: [aPane script
			ifNotNil: [UiFugueIcons zoneIcon]
			ifNil: [UiFugueIcons zoneExclamationIcon]]
		ifTrue: [UiFugueIcons zonesStackIcon]