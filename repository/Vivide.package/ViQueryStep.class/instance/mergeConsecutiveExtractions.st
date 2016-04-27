testing
mergeConsecutiveExtractions
	"Note that the next step in a list has to decide whether it wants to be merged or not. So, if this step is the second of two consecutive property extractions, it has to answer false to be not merged."
	
	^ self
		valueOfProperty: #mergeProperty
		ifAbsent: [ViQueryInterpreter mergeConsecutiveExtractions] 