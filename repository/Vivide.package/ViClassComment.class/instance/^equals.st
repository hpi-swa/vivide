comparing
= anObject

	^ self species = anObject species
		and: [self theClass = anObject theClass]