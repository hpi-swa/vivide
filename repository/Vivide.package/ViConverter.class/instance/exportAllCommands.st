convert
exportAllCommands

	self extractCommands do: [:command |
		self writeCommand: command asDictionary.
		self writeDefinition: command definition asDictionary].