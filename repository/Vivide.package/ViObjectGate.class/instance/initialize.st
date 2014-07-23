initialization
initialize

	super initialize.
	outObjects := SharedQueue new.
	inObjects := SharedQueue new.
	
	self connect: self signal: #connectionEstablished toSelector: #startDataProcesses.
	self connect: self signal: #connectionTimedOut toSelector: #stopDataProcesses.
	self connect: self signal: #connectionLost toSelector: #stopDataProcesses.