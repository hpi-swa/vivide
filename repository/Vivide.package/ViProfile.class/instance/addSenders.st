initialization - scripts
addSenders

	self addScript: {
	
		[:symbol | SystemNavigation default allCallsOn: symbol] -> {
			#inputKind -> ByteSymbol. #outputKind -> MethodReference.
			#label -> 'Senders'.
			#id -> #senders.
			#priority -> 200}.
	
	} asScript.