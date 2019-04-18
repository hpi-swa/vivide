accessing
globalCommands

	^ self orderedCommands select: [:command | command isGlobal]