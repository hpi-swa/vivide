as yet unclassified
isGlobal

	self flag: #refactor. "mt: We might find that out by analysing the code?"
	^ self valueOfProperty: #isGlobal ifAbsent: [false]