interpreting - private
interpretScriptTransformation

	| transformedObjects |
	transformedObjects := Dictionary new.

	objects keysAndValuesDo: [:group :groupedObjects |
		transformedObjects
			at: group
			put: (step process: groupedObjects)].

	self objectsCache at: step put: objects values concatenation.
	objects := transformedObjects.