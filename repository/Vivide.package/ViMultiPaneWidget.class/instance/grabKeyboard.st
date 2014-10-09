as yet unclassified
grabKeyboard

	^ self inputPanes
		ifEmpty: [super grabKeyboard]
		ifNotEmpty: [:panes | panes first grabKeyboard]