as yet unclassified
list

	self flag: #performance.
	^ self model ifNil: [#()] ifNotNil: [:m |
		m nodes collect: [:node | (node at: #text ifAbsent: ['']) asString]]