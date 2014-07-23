accessing - objects
objects

	^ self inputPane
		ifNil: [#()]
		ifNotNil: [:pane | pane objects]