comparing
= other

	^ self == other or: [(self species = other species
		and: [self id = other id])
		and: [self sourceCode = other sourceCode]]