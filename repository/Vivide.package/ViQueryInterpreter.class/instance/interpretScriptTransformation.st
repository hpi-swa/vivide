interpreting - private
interpretScriptTransformation

	| transformedObjects |
	transformedObjects := Dictionary new.

	objects keysAndValuesDo: [:group :groupedObjects |
		transformedObjects
			at: group
			put: (step process: groupedObjects)].

	self flag: #noStreamsSupport.
	
	self objectsCache at: step put: objects values concatenation. "store input not results"
	objects := transformedObjects.