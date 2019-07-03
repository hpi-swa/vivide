private - merge
mergeCommand: selector
	
	(archive theNonMetaClass perform: selector asSymbol) in: [:spec |
		((organizer commandById: (spec at: #id))
			ifNil: [(spec at: #class ifAbsent: [Smalltalk classNamed: (spec at: #className)]) new organization: organizer; id: (spec at: #id); register]
			ifNotNil: [:s | Transcript cr; show: '[Warning] Overwriting registered command ', s id. s])
			in: [:command |
				command notifier doSilently: [
					command mergeFromDictionary: spec].
				commands add: command.
				^ command]].