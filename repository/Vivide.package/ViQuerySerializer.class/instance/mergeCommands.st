private
mergeCommands

	archive selectors
		select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #command) notNil]
		thenDo: [:selector | | category |
			category := archive organization categoryOfElement: selector.
			(category beginsWith: #*)
				ifFalse: [category := nil]
				ifTrue: [category := category allButFirst allButLast: 6]. "Example: *widgets-commands"
		(archive theNonMetaClass perform: selector asSymbol) in: [:spec |
			((organizer commandById: (spec at: #id))
				ifNil: [(spec at: #class) new organization: organizer; id: (spec at: #id); register]
				ifNotNil: [:s | Transcript cr; show: '[Warning] Overwriting registered command ', s id. s])
				in: [:command |
					command notifier doSilently: [
						command mergeFromDictionary: spec.
						command category: category].
					commands add: command]]].