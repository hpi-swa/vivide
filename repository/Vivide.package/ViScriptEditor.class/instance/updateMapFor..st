as yet unclassified
updateMapFor: node

	| deepest count |
	deepest := self class detectDeepestBlockNode: node.
	deepest ifNil: [map := nil. ^ self].
	
	map := {node}, (deepest parents select: [:n | n isBlock]),  {nil}
		overlappingPairsCollect: [:n :x | n isMessage "properies"
			ifFalse: [(n argumentNames inject: '' into: [:s :e | s, ' :', e]),
				(x ifNil: [''] ifNotNil: [' (', x parent selector escapeHtmlText,')'])
				]
			ifTrue: [(self propertyNamesFrom: n arguments first)
				inject: '' into: [:s :e | s, ' ', e]]].
	
"	self redrawLater."