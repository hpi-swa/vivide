accessing - many
allExtractionStepsBySequence

	| result |
	result := OrderedCollection new.
	 self
		allExtractionStepsDo: [:step | result last add: step]
		ifNewSequence: [result add: OrderedCollection new].
	^ result