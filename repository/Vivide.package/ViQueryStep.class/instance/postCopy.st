copying
postCopy

	super postCopy.
	label ifNotNil: [label := 'Copy of ', label].