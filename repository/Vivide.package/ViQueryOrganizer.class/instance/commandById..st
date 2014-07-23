organization - commands
commandById: aSymbol

	^ self commands
		at: aSymbol
		ifAbsent: []