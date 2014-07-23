memento - data
acceptSubscribeCode

	subscribeEdit hasUnacceptedChanges
		ifTrue: [^ subscribeEdit acceptChanges].
			
	self currentUpdateSetDefinition
		sourceCode: self currentSubscribeCode;
		register.
		
	self acceptUpdateSetDefinition.