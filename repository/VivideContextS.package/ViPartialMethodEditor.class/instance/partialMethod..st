as yet unclassified
partialMethod: aPartialMethod

	partialMethod := aPartialMethod.
	
	aPartialMethod ifNotNil: [:pm |
		self artifact method: pm method].

	self resetSource.