copying
postCopy

	properties := properties deepCopy.
	self setCreationInformation.
	self setProperty: #copyOf toValue: id.
	id := UUID new asString asSymbol.