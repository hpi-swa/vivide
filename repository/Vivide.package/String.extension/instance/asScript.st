*vivide-queries
asScript

	ViLoggingService trigger: {#message -> 'Script created from string/block.'}.

	(ViScriptEditor templateForSourceCode: self) in: [:spec | | template code properties |
		template := spec key.
		properties := spec value.
		code := self.
		
		(properties value includesKey: #isProperty) ifTrue: [
			code := ViScriptEditor wrapExtractionIntoArray: code].
		
		ViScriptPart new in: [:script |
			script notifier doSilently: [
				script sourceCode: (ViScriptEditor applyTemplate: template toSourceCode: code).
				properties keysAndValuesDo: [:key :value |
					script setProperty: key toValue: value]].
			
			^ script]]  