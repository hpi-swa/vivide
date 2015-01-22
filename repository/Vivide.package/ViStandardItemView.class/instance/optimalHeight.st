geometry
optimalHeight

	^ self currentVisibleView optimalHeight + self searchEdit height + self cellInset + ((self hasProperty: #hideCommandsBar) ifTrue: [0] ifFalse: [self commandsBar fullBounds height])