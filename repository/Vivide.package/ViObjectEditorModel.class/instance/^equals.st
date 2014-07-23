comparing
= another

	^ super = another or: [
		self species == another species
			and: [self wrappedObject = another wrappedObject]]