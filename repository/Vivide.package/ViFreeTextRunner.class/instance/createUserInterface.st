as yet unclassified
createUserInterface

	| edit |
	edit := UiTextEdit new.
	edit eventHandler: UiEventHandler new.
	edit eventHandler grabKeyboardOnMouseEnter: true.
	
	self connect: edit signal: #textEdited: toSelector: #taskCompleted.
	edit theText: (self task template ifNil: ['Your answer here...']).
	edit selectAll.
	^ edit