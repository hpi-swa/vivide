navigation
referenceForDefinition: def inQueryArchive: aClass

	^ MethodReference
		class: aClass class
		selector: (#def, (def id copyWithout: $-)) asSymbol