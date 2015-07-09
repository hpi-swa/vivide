*vivide-queries
asScript

	ViLoggingService trigger: {#message -> 'Script created from string/block.'}.

	(ViScriptEditor templateForSourceCode: self) in: [:spec | | t s p c |
		t := spec key value.
		s := spec key key ifNil: [1 to: t size].
		p := spec value.
		c := self.
		
		(p value includesKey: #isProperty) ifTrue: [
			c := ViScriptEditor wrapExtractionIntoArray: c].
		
		ViScriptPart new in: [:script |
			script notifier doSilently: [
				script sourceCode:
					(t first: s first - 1),
					c,
					(t last: t size - s last).
				p keysAndValuesDo: [:key :value |
					script setProperty: key toValue: value]].
			
			^ script]]  