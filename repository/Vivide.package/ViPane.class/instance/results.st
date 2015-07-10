as yet unclassified
results

	self flag: #metaScript.
	^ (self currentQuery notNil and: [self currentQuery isMeta])
		ifTrue: [self view outgoingObjects]
		ifFalse: [self model allObjects]