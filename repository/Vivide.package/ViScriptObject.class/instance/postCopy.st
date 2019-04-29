copying
postCopy

	| oldId |
	oldId := id.
	id := UUID new asString asSymbol.

	properties := properties copy.
	
	self organization: ViScriptOrganizer new.
	self register.

	self notifier doSilently: [
		self setCreationInformation.
		self setProperty: #copyOf toValue: oldId].