organization
unregister

	self organization ifNotNil: [:o |
		o unregisterDefinition: self].