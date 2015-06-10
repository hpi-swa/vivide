as yet unclassified
list

	^ self model ifNil: [#()] ifNotNil: [:m |
		m nodes collect: [:node | (node at: #text ifAbsent: ['']) asString]]