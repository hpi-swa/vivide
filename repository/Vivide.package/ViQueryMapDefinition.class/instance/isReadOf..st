as yet unclassified
isReadOf: variable

	self flag: #tooOptimistic. "mt: May not be used at all."
	^ (self variables includes: variable)
		and: [(self isWriteTo: variable) not]