updating
updateUi

	(self object valueOfProperty: #isProperty) == true
		ifTrue: [edit color: (Color gray: 0.93)]
		ifFalse: [edit color: Color white].