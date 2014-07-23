private
serializeSteps

	steps do: [:step | | category |
				
		category := step category
			ifNil: ['']
			ifNotNil: [:c | '*', c, '-'].
		
		"Ensure to archive also steps that may be reachable but not registered."
		#step, (step id copyWithout: $-) in: [:selector |

			self
				archiveCode: selector, String cr,
					String tab, '<step>', String cr,
					String cr,
					String tab, '^ ', step asDictionary storeString
				under: category, 'steps'.

			(stepSelectors
				at: category ifAbsentPut: [OrderedCollection new])
				add: selector -> step.
 
			"Ensure to archive also definitions that may be reachable but not registered."
			step definition ifNotNil: [:def | definitions add: def].
			step viewDefinition ifNotNil: [:def | definitions add: def].
		]].