geometry
optimalHeight

	^ self currentVisibleView optimalHeight + self searchEdit height + self cellInset + ((self commandsBar world isNil) ifTrue: [0] ifFalse: [self commandsBar fullBounds height])