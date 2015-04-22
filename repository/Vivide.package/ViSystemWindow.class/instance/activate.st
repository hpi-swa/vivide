top window
activate

	active := true.
	super activate.
	
	self isSticky
		ifTrue: [self pushOtherWindowsAside].