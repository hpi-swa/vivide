as yet unclassified
checkNewToolColor
	self flag: #newbie.

	((self valueOfProperty: #isNew) == true and: [self color isNil])
		ifTrue: [self color: ViScriptEditor newScriptToolColor].