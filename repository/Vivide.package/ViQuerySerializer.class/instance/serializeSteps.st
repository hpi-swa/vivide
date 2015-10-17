private
serializeSteps

	steps do: [:step | | category |
				
		category := self class categoryPrefixFor: step.
		
		(stepSelectors
			at: category ifAbsentPut: [OrderedCollection new])
			add: (self updateStep: step) -> step.
 
		"Ensure to archive also definitions that may be reachable but not registered."
		step definition ifNotNil: [:def | definitions add: def]].