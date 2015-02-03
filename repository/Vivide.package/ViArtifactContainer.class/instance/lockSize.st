dropping/grabbing
lockSize

	self resizeHandle ifNil: [^ self].
	self resizeHandle target: nil.
	self resizeHandle hideFull.