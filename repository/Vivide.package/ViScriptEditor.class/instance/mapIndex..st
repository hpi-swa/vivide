accessing
mapIndex: index

	mapIndex := index.
	
	self isCollapsed ifTrue: [^ self].
	self layoutPolicy ifNil: [^ self].
	
	self layoutInset: (
		(index - 1) * 2 "px" @ ((index - 1) * 4 "px" + (index > 2 ifTrue: [13] ifFalse: [index = 2 ifTrue: [8] ifFalse: [0]]))
			corner: 0@ (self object isEndOfLevel ifTrue: [9] ifFalse: [0])).
	self layoutChanged.
	
	self redrawLater.