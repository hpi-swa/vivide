deprecated
interpretTransformStep

	| transformedObjects |
	self assert: step isTransformStep.
	
	step isGroupSortStep ifTrue: [
		self flag: #stinky. "mt: Groups should be more of a generic concept?"
		groups := step process: groups.
		^ self].
	
	transformedObjects := Dictionary new.

	objects keysAndValuesDo: [:group :groupedObjects |
		transformedObjects
			at: group
			put: (step process: groupedObjects)].

	objects := transformedObjects.