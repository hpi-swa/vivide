actions
toggleCodeVisible: aBoolean

	aBoolean
		ifTrue: [self artifact addMorph: codeBox behind: edit]
		ifFalse: [codeBox delete].