as yet unclassified
allPropertyStepsBySequence

	| result |
	result := OrderedCollection new.
	 self
		allPropertyStepsDo: [:step | result last add: step]
		ifNewSequence: [result add: OrderedCollection new].
	^ result