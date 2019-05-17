support
mergeStep: selector

	(archive theNonMetaClass perform: selector asSymbol) in: [:spec |
		((organizer stepById: (spec at: #id))
			ifNil: [(spec at: #class) new organization: organizer; id: (spec at: #id); register]
			ifNotNil: [:s | Transcript cr; show: '[Warning] Overwriting registered step ', s id. s])
			in: [:step |
				step notifier doSilently: [
					step mergeFromDictionary: spec].
				steps add: step.
				^ step]].