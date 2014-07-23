accessing - ui
inputPane

	^ self panes
		ifEmpty: [nil]
		ifNotEmpty: [:panes | panes first]