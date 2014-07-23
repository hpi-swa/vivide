support
isOverride: aSelector in: aClass
	aClass allSuperclassesDo: [ :class | 
		(class includesSelector: aSelector) 
			ifTrue: [ ^ true ] ].
	^ false