accessing
visibleNodes

	^ self model
		ifNil: [#()]
		ifNotNil: [:m | m nodes ifNotEmpty: [:nodes | {nodes first}]]