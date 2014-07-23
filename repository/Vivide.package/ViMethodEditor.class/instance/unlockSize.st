dropping/grabbing
unlockSize

	super unlockSize.
	self resizeHandle target ifNil: [^ self].

	self artifact
		scrollingMode: #limit;
		scrollingLimit: 10.