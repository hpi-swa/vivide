convert
importAllCommands

	| commands |
	commands := OrderedCollection new.
	
	self readCommands do: [:dict | commands add: (self mergeCommand: dict)].

	"Resolve ids."
	commands do: [:command | command definition].