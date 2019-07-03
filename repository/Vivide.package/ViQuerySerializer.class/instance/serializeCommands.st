private - serialize
serializeCommands

	commands do: [:command |
		commandSelectors add: (self updateCommand: command).
 
		"Ensure to archive also definitions that may be reachable but not registered."
		command definition ifNotNil: [:def | definitions add: def]].