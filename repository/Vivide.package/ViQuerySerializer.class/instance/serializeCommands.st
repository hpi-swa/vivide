private
serializeCommands

	commands do: [:command | | category |
				
		category := command category
			ifNil: ['']
			ifNotNil: [:c | '*', c, '-'].
		
		"Ensure to archive also steps that may be reachable but not registered."
		#command, (command id copyWithout: $-) in: [:selector |

			self
				archiveCode: selector, String cr,
					String tab, '<command>', String cr,
					String cr,
					String tab, '^ ', command asDictionary storeString
				under: category, 'commands'.

			(commandSelectors
				at: category ifAbsentPut: [OrderedCollection new])
				add: selector -> command.
 
			"Ensure to archive also definitions that may be reachable but not registered."
			command definition ifNotNil: [:def | definitions add: def].
		]].