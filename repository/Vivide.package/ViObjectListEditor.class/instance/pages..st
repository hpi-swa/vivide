accessing
pages: somePages

	self ui stack
		initializePages: somePages
		startIndex: 1.
	
	self ui pageButtonGroup submorphs allButFirst do: [:btn |
		btn delete].
	
	somePages allButFirst do: [:page | self addButtonForPage: page].