as yet unclassified
updateQueryCommandsFor: someObjects

	someObjects
		ifEmpty: [self commandsBar delete. ^ self].

	self commandsBar updateForObjects: someObjects.

	self commandsBar commands
		ifEmpty: [self commandsBar delete. ^ self].
	
	self commandsBar owner isNil
		ifTrue: [self addMorph: self commandsBar inFrontOf: self currentVisibleView]