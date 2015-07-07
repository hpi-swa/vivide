copying
postCopy

	| oldId |
	oldId := id.
	id := UUID new asString asSymbol.

	"DeepCopy does not work for blocks. I think sharing of values if fine because editors will overwrite them anyway..."
	properties := properties copy.
	
	self organization: ViQueryOrganizer new.
	self register.

	self notifier doSilently: [
		self setCreationInformation.
		self setProperty: #copyOf toValue: oldId].