tests
test04FrequencyNormalizationOnRemove

	sut addObject: String.
	sut addObject: Character.
	sut addObject: String.
	
	self assert: #(2 1) equals: self orderedFrequencies.

	sut removeObject: Character.  
	self assert: #(1) equals: self orderedFrequencies.