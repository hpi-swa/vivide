actions - navigation
selectBlockStatements

	(RBParser
		parseExpression: edit theText asString
		onError: [:msg :i | edit select: (1 to: 0). ^ self])
		in: [:node | node isBlock
			ifFalse: [^ self]
			ifTrue: [(node children
				detect: [:child | child isSequence]
				ifNone: [^ self]) in: [:sequence |
					edit select:
						"Merge comments into selection." 
						((((sequence comments, {sequence sourceInterval})
							gather: [:interval | interval size > 0
								ifFalse: [#()]
								ifTrue: [{interval first. interval last}]])
									ifEmpty: [^ edit selectAll] ifNotEmpty: [:a | a minMax])
							in: [:minMax | minMax first to: minMax second])
						]]].