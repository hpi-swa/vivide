as yet unclassified
optimalWidth

	^ self isCollapsed
		ifTrue: [0]
		ifFalse: [edit optimalWidth + self layoutPolicy margins left + self layoutPolicy margins right]