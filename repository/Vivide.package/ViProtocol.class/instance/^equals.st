comparing
= another

	^ (self species = another species
		and: [self theClass = another theClass])
		and: [self protocolname = another protocolname]