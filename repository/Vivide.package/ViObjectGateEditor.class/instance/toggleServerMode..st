actions
toggleServerMode: isListening

	isListening
		ifTrue: [objectGate beServer]
		ifFalse: [objectGate beClient].