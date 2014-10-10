initialize-release
initialize

	super initialize.
	id := UUID new asString asSymbol.
	self setCreationInformation.