tests - multiple
test08InputKind

	self setUpWindow: #(1 2 3).
	self assert: (editor inputKind hasEqualElements: {SmallInteger}).