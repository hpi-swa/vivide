updating
updateFromChangedStepProperties: evt

	self currentQuery ifNil: [^ self].

	evt hasPropertyExtractionChanged ifFalse: [^ self].

	self currentQuery allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].