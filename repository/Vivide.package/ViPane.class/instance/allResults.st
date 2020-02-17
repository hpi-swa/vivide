accessing - view
allResults

	self flag: #metaScript.
	^ (self script notNil and: [self script isMeta])
		ifTrue: [self view outgoingObjects]
		ifFalse: [self model allObjects]