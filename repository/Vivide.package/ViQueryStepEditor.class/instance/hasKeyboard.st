events
hasKeyboard

	^ self ui definitionEdit visible
		ifFalse: [self ui referenceEdit hasKeyboard]
		ifTrue: [self ui definitionEdit hasKeyboard]