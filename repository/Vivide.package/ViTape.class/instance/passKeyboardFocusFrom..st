actions - focus
passKeyboardFocusFrom: anEditor
	
	| index |
	index := self editors indexOf: anEditor.
	
	index < self editors size
		ifTrue: [self passKeyboardFocusTo: (self editors at: index + 1)]  
		ifFalse: [self passKeyboardFocusTo: (self editors at: (index - 1 max: 1))].