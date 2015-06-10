as yet unclassified
aboutToStyle: aStyler

	aStyler workspace: (self model ifNotNil: [:m | m firstNode at: #stylerWorkspace ifAbsent: []]).
	aStyler classOrMetaClass: (self model ifNotNil: [:m | m firstNode at: #stylerClass ifAbsent: [] ]).
	
	^ true