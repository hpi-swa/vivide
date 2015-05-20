organization - commands
unregisterCommand: aCommand

	(self commands includesKey: aCommand id)
		ifFalse: [^ self].
	self commands removeKey: aCommand id.
	
	self commandsCategorizer removeElement: aCommand id.
	
	self flag: #todo: "mt: Extend query notifier."	
	"self notifier commandUnregistered: aCommand."