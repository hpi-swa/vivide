as yet unclassified
updateMapFor: node

	| deepest count |
	deepest := self class detectDeepestBlockNode: node.
	deepest ifNil: [map := nil. ^ self].
	
	map := {node}, (deepest parents select: [:n | n isBlock]),  {nil}
		overlappingPairsCollect: [:n :x | n isMessage "properties"
			ifFalse: [(n argumentNames inject: '' into: [:s :e | s, ' :', e]),
				(x ifNil: [''] ifNotNil: [' (', 
					(x parent isMessage
						ifTrue: [x parent selector escapeHtmlText]
						ifFalse: ['-']),
					')'])
				]
			ifTrue: [(self propertyNamesFrom: n arguments first)
				inject: '' into: [:s :e | s, ' ', e]]].
	
"	self redrawLater."