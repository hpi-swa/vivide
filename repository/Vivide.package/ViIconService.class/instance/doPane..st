vivide - kernel
doPane: aPane

	self flag: #metaScript.
	^ (aPane view isKindOf: ViMultiPaneWidget)
		ifFalse: [aPane script
			ifNotNil: [UiFugueIcons zoneIcon]
			ifNil: [UiFugueIcons zoneExclamationIcon]]
		ifTrue: [UiFugueIcons zonesStackIcon]