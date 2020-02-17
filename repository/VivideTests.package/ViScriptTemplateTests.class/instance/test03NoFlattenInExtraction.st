tests
test03NoFlattenInExtraction
	"Property extractions will *not* unpack one level of collections."
	
	| output |
	output := ([:numOrPair | #text -> numOrPair asString] asScript process: #( (1 2) 3 (4 5) ))
		collect: [:spec | (Dictionary newFrom: spec) at: #object].
	
	self
		assert: #( (1 2) 3 (4 5) )
		equals: output asArray.