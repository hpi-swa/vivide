as yet unclassified
profile

	^ profile ifNil: [
		self profile: (LastProfile ifNil: [self class profiles last]).
		profile]