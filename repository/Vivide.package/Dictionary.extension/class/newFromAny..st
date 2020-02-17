*vivide
newFromAny: aDictionary
	"Duplicates will be overwritten."
	
	| newDictionary |
	newDictionary := self new: aDictionary size.
	aDictionary associationsDo: [:x |
		newDictionary at: x key put: x value].
	^ newDictionary