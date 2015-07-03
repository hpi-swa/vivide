updating
updateFromChangedStepProperties: evt

	self currentQuery ifNil: [^ self].

	evt onlyViewIndependentChanges ifTrue: [^ self].

	self currentQuery allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].