support
updateCommand: command

	^ self class
		updateCommand: command
		category: (self class categoryPrefixFor: command)
		archive: archive