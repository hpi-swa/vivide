dropping/grabbing
unlockSize

	self resizeHandle ifNil: [^ self].
	self resizeHandle target: self artifact.
	self resizeHandle showFull.