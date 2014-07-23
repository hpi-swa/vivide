tests
test02NewUpdateDefinitions

	editor
		currentSubscribeCode: '[:model | AnotherMagicSubject notify: model]';
		currentUnsubscribeCode: '[:model | AnotherMagicSubject notifyNoMore: model]'.
		
	self assert: definition updateSetDefinition isNil.
	editor acceptSubscribeCode.
	self assert: definition updateSetDefinition isRegistered.
	
	self assert: definition updateClearDefinition isNil.
	editor acceptUnsubscribeCode.
	self assert: definition updateClearDefinition isRegistered.