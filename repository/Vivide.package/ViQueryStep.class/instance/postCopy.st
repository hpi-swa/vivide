copying
postCopy

	properties := properties deepCopy.
	self setProperty: #copyOfStep toValue: id.
	id := nil.
	label ifNotNil: [label := 'Copy of ', label].