copying
postCopy

	| oldId |
	oldId := id.
	id := UUID new asString asSymbol.

	properties := properties deepCopy.

	self organization: ViQueryOrganizer new.
	self register.

	self setCreationInformation.
	self setProperty: #copyOf toValue: oldId.