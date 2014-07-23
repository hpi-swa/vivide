private
serializeStepsOrder

	stepSelectors keys copy do: [:category |
		stepSelectors
			at: category
			put: (((stepSelectors at: category) sorted: [:s1 :s2 | | i1 i2 |
				i1 := organizer orderedSteps indexOf: s1 value.
				i2 := organizer orderedSteps indexOf: s2 value.
				i2 = 0 or: [i1 < i2 and: [i1 > 0]]]) collect: [:assoc | assoc key])].
	stepSelectors keysAndValuesDo: [:category :selectors |
		self
			archiveCode: 'order', (category select: [:char | char isLetter]), String cr,
				String tab, '<order>', String cr,
				String cr,
				String tab, '^ ', selectors asArray storeString
			under: category, 'organization'].