private
mergeDefinitions

	archive selectors
		select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #definition) notNil]
		thenDo: [:selector | | category |
			category := archive organization categoryOfElement: selector.
			(category beginsWith: #*)
				ifFalse: [category := nil]
				ifTrue: [category := category allButFirst allButLast: 12]. "Example: *widgets-definitions"
		(archive theNonMetaClass perform: selector) in: [:spec |
			((organizer definitionById: (spec at: #id))
				ifNil: [(spec at: #class) new id: (spec at: #id); organization: organizer; register]
				ifNotNil: [:d | Transcript cr; show: '[Warning] Overwriting registered definition ', d id. d])
				in: [:definition |
					definition notifier doSilently: [
						definition mergeFromDictionary: spec.
						definition category: category].
					definitions add: definition]]].