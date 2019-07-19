accessing - view
allResults

	self flag: #metaScript.
	^ (self currentQuery notNil and: [self currentQuery isMeta])
		ifTrue: [self view outgoingObjects]
		ifFalse: [self model allObjects]