events
hasKeyboard

	^ self inputPane
		ifNil: [false]
		ifNotNil: [:pane | pane hasKeyboard]