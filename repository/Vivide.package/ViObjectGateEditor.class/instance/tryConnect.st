actions
tryConnect

	(objectGate isConnected or: [objectGate isWaitingForConnection])
		ifTrue: [objectGate disconnect]
		ifFalse: [objectGate createConnection].
	self updateButtons.