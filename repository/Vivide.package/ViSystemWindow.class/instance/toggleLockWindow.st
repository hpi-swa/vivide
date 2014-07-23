as yet unclassified
toggleLockWindow

	self isSticky
		ifTrue: [self unlockWindow]
		ifFalse: [self lockWindow].