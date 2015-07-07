tests
test03FrequencyNormalization

	sut addObject: String.
	sut addObject: String.
	sut addObject: Character.
	
	self assert: #(1 1) equals: self orderedFrequencies.
	
	sut addObject: String.
	self assert: #(2 1) equals: self orderedFrequencies.
	
	sut addObject: Character.
	self assert: #(1 1) equals: self orderedFrequencies.