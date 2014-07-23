as yet unclassified
visibleNodes

	^ self model
		ifNil: [#()]
		ifNotNil: [:m | m childrenAllGroups ifNotEmpty: [:nodes | {nodes first}]]