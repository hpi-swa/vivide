commands bar
updateQueryCommands

	(self objects isEmpty or: [self valueOfProperty: #hideCommandsBar ifAbsent: [false]])
		ifTrue: [self commandsBar delete. ^ self].

	self commandsBar updateForObjects: self objects.

	self commandsBar commands
		ifEmpty: [self commandsBar delete. ^ self].
	
	self commandsBar owner isNil
		ifTrue: [self addMorph: self commandsBar inFrontOf: self currentVisibleView]