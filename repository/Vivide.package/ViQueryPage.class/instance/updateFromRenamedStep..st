updating
updateFromRenamedStep: evt

	self currentQuery ifNotNil: [:q |
		q allStepsDo: [:step |
			step == evt item ifTrue: [self currentQueryChanged: q]]].