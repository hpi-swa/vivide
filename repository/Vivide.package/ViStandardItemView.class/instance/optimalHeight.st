geometry
optimalHeight

	self flag: #magicNumber.
	^ self currentVisibleView optimalHeight
		+ self searchEdit height + 3
		+ self cellInset
		+ ((self commandsBar world isNil)
			ifTrue: [0]
			ifFalse: [self commandsBar fullBounds height])