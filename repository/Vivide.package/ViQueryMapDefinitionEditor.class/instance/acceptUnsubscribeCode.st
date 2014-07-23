memento - data
acceptUnsubscribeCode

	unsubscribeEdit hasUnacceptedChanges
		ifTrue: [^ unsubscribeEdit acceptChanges].
		
	self currentUpdateClearDefinition
		sourceCode: self currentUnsubscribeCode;
		register.
		
	self acceptUpdateClearDefinition.