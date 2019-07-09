tests - copying & serialization
test10MergeFromDictionary

	| step dict |
	step := { [:num | num * num] -> { #color -> #red. #priority -> 90 } }asScript.
	dict := Dictionary newFrom: { #properties -> (Dictionary newFrom: { #color -> #blue }) }.
	step mergeFromDictionary: dict.
	self
		assert: #blue equals: (step valueOfProperty: #color);
		assert: 90 equals: (step valueOfProperty: #priority).