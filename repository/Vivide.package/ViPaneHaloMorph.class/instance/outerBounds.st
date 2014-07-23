as yet unclassified
outerBounds

	| box |
	self target ifNil: [^ super outerBounds].
	box := self basicBox.
	newOutputPane ifNotNil: [:m |
		box := box quickMerge: m bounds].
	
	
	self listeningPanesForSelections,
	self listeningPanesForResults,
	self listenToPanesForSelections,
	self listenToPanesForResults do: [:m |
		box := box quickMerge: m bounds].
	^ box