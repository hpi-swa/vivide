accessing
orderedCommands

	^ orderedCommands ifNil: [orderedCommands := OrderedCollection new]