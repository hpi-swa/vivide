actions - navigation
selectBlockStatements

	(RBParser
		parseExpression: self visibleSourceCode
		onError: [:msg :i | edit select: (1 to: 0). ^ self])
		in: [:node | node isBlock
			ifFalse: [^ self]
			ifTrue: [(node children
				detect: [:child | child isSequence]
				ifNone: [^ self]) in: [:sequence |
					self textField select:
						"Merge comments into selection." 
						((((sequence comments, {sequence sourceInterval})
							gather: [:interval | interval size > 0
								ifFalse: [#()]
								ifTrue: [{interval first. interval last}]])
									ifEmpty: [^ edit selectAll] ifNotEmpty: [:a | a minMax])
							in: [:minMax | minMax first to: minMax second])
						]]].