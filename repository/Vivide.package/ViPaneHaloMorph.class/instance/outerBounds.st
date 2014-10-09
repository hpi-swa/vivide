geometry
outerBounds

	| box |
	self target ifNil: [^ super outerBounds].
	box := self basicBox.
	newOutputPane ifNotNil: [:m |
		box := box quickMerge: m bounds].
	
	
	self listeningPanesForSelections,
	self listeningPanesForResults,
	self providingPanesForSelections,
	self providingPanesForResults do: [:m |
		box := box quickMerge: m bounds].
	^ box