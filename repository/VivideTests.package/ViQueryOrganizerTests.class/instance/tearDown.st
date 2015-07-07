running
tearDown
	
	self class class selectors
		select: [:symbol | #(step definition order) anySatisfy: [:s | ((self class class compiledMethodAt: symbol) pragmaAt: s) notNil]]
		thenDo: [:selector | self class class removeSelectorSilently: selector].
	
	super tearDown.