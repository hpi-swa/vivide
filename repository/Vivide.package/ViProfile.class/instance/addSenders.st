initialization - scripts
addSenders

	self addScript: {
	
		[:symbol | SystemNavigation default allCallsOn: symbol] -> {
			#inputKind -> ByteSymbol. #outputKind -> MethodReference.
			#view -> ViTreePlainView.
			#label -> 'Senders'.
			#id -> #senders.
			#priority -> 200}.
			
		#defaultPropertiesExtended.
		[:object | #text -> (ViObjectOriginService doObject: object)] -> { #mergeProperty -> true }.
			
	} asScript.

	self addScript: {
		[:method | method selector] -> {
			#inputKind -> CompiledMethod. #outputKind -> ByteSymbol.
			#view -> ViTreePlainView.
			#priority -> 200.
		}.
		#senders.
	} asScript.

	self addScript: {
		[:reference | reference selector] -> {
			#inputKind -> MethodReference. #outputKind -> ByteSymbol.
			#view -> ViTreePlainView.
			#priority -> 200.
		}.
		#senders.
	} asScript.