as yet unclassified
aboutToStyle: aStyler

	(self model isNil or: [self model hasChildren not])
		ifTrue: [^ false].

	aStyler workspace: (self model firstNode at: #stylerWorkspace ifAbsent: []).
	aStyler classOrMetaClass: (self model firstNode at: #stylerClass ifAbsent: []).
	
	^ true