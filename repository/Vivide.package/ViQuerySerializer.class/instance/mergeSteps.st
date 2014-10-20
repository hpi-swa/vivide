private
mergeSteps

	((archive selectors
		select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #order) notNil])
		gather: [:orderSelector | archive theNonMetaClass perform: orderSelector])
		do: [:selector | | category |
			category := archive organization categoryOfElement: selector.
			(category beginsWith: #*)
				ifFalse: [category := nil]
				ifTrue: [category := category allButFirst allButLast: 6]. "Example: *widgets-steps"
		(archive theNonMetaClass perform: selector asSymbol) in: [:spec |
			((organizer stepById: (spec at: #id))
				ifNil: [(spec at: #class) new id: (spec at: #id); organization: organizer; register]
				ifNotNil: [:s | Transcript cr; show: '[Warning] Overwriting registered step ', s id. s])
				in: [:step |
					step notifier doSilently: [
						step mergeFromDictionary: spec.
						step category: category].
					steps add: step]]].