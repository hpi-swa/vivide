private
serializeCommandsOrder

	commandSelectors keys copy do: [:category |
		commandSelectors
			at: category
			put: (((commandSelectors at: category) sorted: [:s1 :s2 | | i1 i2 |
				i1 := organizer orderedCommands indexOf: s1 value.
				i2 := organizer orderedCommands indexOf: s2 value.
				i2 = 0 or: [i1 < i2 and: [i1 > 0]]]) collect: [:assoc | assoc key])].
	commandSelectors keysAndValuesDo: [:category :selectors |
		self
			archiveCode: 'orderCommands', (category select: [:char | char isLetter]), String cr,
				String tab, '<orderCommands>', String cr,
				String cr,
				String tab, '^ ', selectors asArray storeString
			under: category, 'organization'].