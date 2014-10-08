initialization
reset

	self model ifNil: [^ self].

	self setupBlock
		value: self model
		value: self container.
	
	self container updateToolbars.