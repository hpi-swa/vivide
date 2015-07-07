running
tearDown
	
	#(defaultView id label), 
	(self archive class selectors
		select: [:symbol | #(step definition order orderCommand command) anySatisfy: [:s | ((self archive class compiledMethodAt: symbol) pragmaAt: s) notNil]])
		do: [:selector | self archive class removeSelectorSilently: selector].
	
	super tearDown.