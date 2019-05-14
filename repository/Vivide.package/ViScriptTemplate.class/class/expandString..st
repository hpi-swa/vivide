templates - support
expandString: aString

	(self lookupTemplate: aString) in: [:spec |
		| template code properties |
		template := spec key.
		properties := spec value.
		code := aString.
		
		(properties value includesKey: #isProperty) ifTrue: [
			code := self wrapExtractionIntoArray: code].

		^ self applyTemplate: template toSourceCode: code]