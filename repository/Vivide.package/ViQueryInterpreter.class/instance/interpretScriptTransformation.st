as yet unclassified
interpretScriptTransformation

	| transformedObjects |
	transformedObjects := Dictionary new.

	objects keysAndValuesDo: [:group :groupedObjects |
		transformedObjects
			at: group
			put: (step process: groupedObjects within: (contexts at: group))].

	objects := transformedObjects.	