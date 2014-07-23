organization - commands
registerCommand: aCommand

	(self commands includesKey: aCommand id)
		ifTrue: [^ self].		
	self commands at: aCommand id put: aCommand.
	self orderedCommands add: aCommand.

	self flag: #todo: "mt: Extend query notifier."	
"	self notifier commandRegistered: aCommand."