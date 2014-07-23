as yet unclassified
tryDelete: aMouseEvent from: aToolbarPanel

	(self morphsAt: aMouseEvent position)
		ifEmpty: [^ self delete].
		
	(aToolbarPanel hasContent not and: [aToolbarPanel bounds containsPoint: aMouseEvent position])
		ifTrue: [^ self delete].