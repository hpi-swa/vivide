organization - commands
unregisterCommand: aCommand

	(self commands includesKey: aCommand id)
		ifFalse: [^ self].
	self commands removeKey: aCommand id.
	self orderedCommands remove: aCommand.
	
	self commandsCategorizer removeElement: aCommand id.
	
	self flag: #todo: "mt: Extend query notifier."	
	"self notifier commandUnregistered: aCommand."