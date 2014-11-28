as yet unclassified
doPane: aPane

	^ (aPane view isKindOf: ViMultiPaneWidget)
		ifFalse: [aPane currentQuery
			ifNotNil: [UiFugueIcons zoneIcon]
			ifNil: [UiFugueIcons zoneExclamationIcon]]
		ifTrue: [UiFugueIcons zonesStackIcon]