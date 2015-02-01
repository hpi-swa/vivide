organization
unregister

	self organization ifNotNil: [:o |
		o unregisterStep: self].