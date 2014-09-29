as yet unclassified
selectBlockStatements

	(RBParser parseExpression: edit theText asString)
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