as yet unclassified
globalCommands

	^ self orderedCommands select: [:command | command isGlobal]