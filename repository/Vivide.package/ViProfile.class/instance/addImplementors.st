initialization - scripts
addImplementors

	self addScript: {
	
		[:symbol | SystemNavigation default allImplementorsOf: symbol] -> {
			#inputKind -> ByteSymbol. #outputKind -> MethodReference.
			#view -> ViTreePlainView.
			#label -> 'Implementors'.
			#id -> #implementors.
			#priority -> 200}.
			
	} asScript.

	self addScript: {
		[:method | method selector] -> {
			#inputKind -> CompiledMethod. #outputKind -> ByteSymbol.
			#view -> ViTreePlainView.
			#priority -> 200.
		}.
		#implementors.
	} asScript.

	self addScript: {
		[:reference | reference selector] -> {
			#inputKind -> MethodReference. #outputKind -> ByteSymbol.
			#view -> ViTreePlainView.
			#priority -> 200.
		}.
		#implementors.
	} asScript.