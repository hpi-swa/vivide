as yet unclassified
interpretTupleStep

	| transformedObjects |
	self assert: step isTupleStep.
		
	transformedObjects := Dictionary new.

	objects keysAndValuesDo: [:group :groupedObjects |
		transformedObjects
			at: group
			put: (step process: groupedObjects within: (contexts at: group))].

	objects := transformedObjects.