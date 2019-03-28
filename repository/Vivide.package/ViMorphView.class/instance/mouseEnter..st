as yet unclassified
mouseEnter: evt

	showCursorPosition
		ifFalse: [evt hand showTemporaryCursor: Cursor crossHair]
		ifTrue: [evt hand showTemporaryCursor: Cursor blank].