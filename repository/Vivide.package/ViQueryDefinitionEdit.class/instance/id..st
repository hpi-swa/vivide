accessing
id: aString

	self setProperty: #uuid toValue: aString.
	self updateButton: idBtn label: '<',(aString asString truncateWithElipsisTo: 25), '>'.