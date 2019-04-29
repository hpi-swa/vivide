interpretation
shouldAppendExtraction
	"Should this step extract further properties during interpretation?"
	
	"If true, consecutive property extractions are treated as one. All extracted properties will be stored with a leading property number, e.g. 1_text, 2_text, 3_text, etc."
	
	^ self
		valueOfProperty: #mergeProperty
		ifAbsent: [true]