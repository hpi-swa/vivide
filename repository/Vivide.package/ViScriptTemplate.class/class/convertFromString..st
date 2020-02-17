converting
convertFromString: aString

	(self lookupTemplate: aString) in: [:spec | | template code properties |
		template := spec key.
		properties := spec value.
		code := aString.
		
		(properties value includesKey: #isProperty) ifTrue: [
			code := self wrapExtractionIntoArray: code].
		
		ViScriptStep new in: [:script |
			script notifier doSilently: [
				script sourceCode: (self applyTemplate: template toSourceCode: code).
				properties keysAndValuesDo: [:key :value |
					script setProperty: key toValue: value]].
			
			^ script]]  