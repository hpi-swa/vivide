pop-up chooser
popUpAt: pt

	self ui addQueryBtn delete.
	self ui debugQueryBtn delete.
	self ui combineQueryBtn delete.
	self commandsBar delete.
	
	self layoutInset: 2.
	
	super popUpAt: pt