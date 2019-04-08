accessing - ui
mapIndex: index

	| xh |
	mapIndex := index.
	
	self isCollapsed ifTrue: [^ self].
	self layoutPolicy ifNil: [^ self].
	
	xh := Preferences standardButtonFont height.	

	self layoutInset: (
		(index - 1) * 2 "px" @ ((index - 1) * (xh/2) + (index > 2 ifTrue: [xh * 1.5] ifFalse: [index = 2 ifTrue: [xh] ifFalse: [0]]))
			corner: 0@ ((self object isEndOfLevel and: [self isScriptInaccessible not]) ifTrue: [xh] ifFalse: [0])).
	self layoutChanged.
	
	self redrawLater.