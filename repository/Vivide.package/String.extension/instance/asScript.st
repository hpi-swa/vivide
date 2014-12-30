*vivide-queries
asScript

	ViLoggingService trigger: {#message -> 'Script created from string/block.'}.

	(ViScriptEditor templateForSourceCode: self) in: [:spec | | t s p |
		t := spec key value.
		s := spec key key ifNil: [1 to: t size].
		p := spec value.
		ViScriptPart new in: [:script |
			script sourceCode:
				(t first: s first - 1),
				self,
				(t last: t size - s last).
			p keysAndValuesDo: [:key :value |
				script setProperty: key toValue: value].
			^ script]]  