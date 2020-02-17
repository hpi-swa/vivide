geometry
optimalHeight

	self flag: #magicNumber.
	^ self currentVisibleView optimalHeight
		+ self searchEdit height + 3
		+ self cellInset
		+ ((self commandsBar owner isNil)
			ifTrue: [0]
			ifFalse: [self commandsBar fullBounds height + 3])