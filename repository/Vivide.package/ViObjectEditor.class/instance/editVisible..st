actions
editVisible: aBoolean

	aBoolean == self editVisible ifTrue: [^ self "no change"].

	aBoolean
		ifTrue: [self sourceCodeEdit showFull]
		ifFalse: [self sourceCodeEdit hideFull].