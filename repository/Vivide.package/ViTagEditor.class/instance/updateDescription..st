updating
updateDescription: aText

	self ensureTag ifFalse: [^ self].
	tag description: (aText ifEmpty: [] ifNotEmpty: [:t | t]).  