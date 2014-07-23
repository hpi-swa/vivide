memento - cleanup
clear

	super clear.
	
	objectGate
		ifNil: [Error signal: 'Object gate missing!']
		ifNotNil: [
			self ui addressEdit theText: (
				(NetNameResolver stringFromAddress: objectGate hostAddress),
				':', objectGate port asString).
			self updateButtons].
		
	self updateToolbars.