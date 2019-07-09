tests - copying & serialization
test11LoadFromDictionary

	| step dict |
	step := { [:num | num * num] -> { #color -> #red. #priority -> 90 } }asScript.
	dict := Dictionary newFrom: { #properties -> (Dictionary newFrom: { #color -> #blue }) }.
	step loadFromDictionary: dict.
	self
		assert: #blue equals: (step valueOfProperty: #color);
		deny: (step hasProperty: #priority).