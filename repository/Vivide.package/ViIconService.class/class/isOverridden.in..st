support
isOverridden: aSelector in: aClass
	aClass allSubclassesDo: [ :class |
		(class includesSelector: aSelector)
			ifTrue: [ ^ true ] ].
	^ false