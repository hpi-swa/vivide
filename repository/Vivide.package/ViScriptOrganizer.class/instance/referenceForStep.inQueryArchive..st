accessing - convenience
referenceForStep: step inQueryArchive: aClass

	^ MethodReference
		class: aClass class
		selector: (#step, (step id copyWithout: $-)) asSymbol