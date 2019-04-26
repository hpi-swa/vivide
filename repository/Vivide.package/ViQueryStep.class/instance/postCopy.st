copying
postCopy

	super postCopy.
	self label ifNotNil: [:lbl | self setLabel: 'Copy of ', lbl].