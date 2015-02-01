initialization - scripts
addImplementors

	self addScript: {
	
		[:symbol | SystemNavigation default allImplementorsOf: symbol] -> {
			#inputKind -> ByteSymbol. #outputKind -> MethodReference.
			#label -> 'Implementors'.
			#id -> #implementors}.
	
	} asScript.